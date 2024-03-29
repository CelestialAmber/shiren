#!/usr/bin/env python3

#Graphics tool for the Shiren disassembly. Can convert png to 4bpp and compress 4bpp files
#to Shiren's compression format
#Usage: gfx.py [-h] cmd [--pattern v|h] [--header] file.4bpp

import argparse
import png

def IsBlankChunk(chunk):
	for x in range(32):
		for y in range(32):
			if chunk[y][x] != 0: return False
	return True

#Checks if the given chunk already exists in the chunk list
def IsDuplicateChunk(chunks, newChunk):
	for i in range(len(chunks)):
		match = True
		for x in range(32):
			for y in range(32):
				if newChunk[y][x] != chunks[i][y][x]: match = False
		if match == True: return True
	
	return False


#Splits a 4bpp indexed image into separate 32x32 chunks. This is mainly used to split up the Tainted
#Insect sprites into smaller pieces that the game can use.
def SplitImage(width, height, imageData, filename, palette):
	chunkWidth = int(width/32)
	chunkHeight = int(height/32)
	numChunks = chunkWidth * chunkHeight
	chunks = []
	pixels = list(imageData)

	for i in range(numChunks):
		newChunk = []
		chunkX = (i % chunkWidth)*32
		chunkY = int(i/chunkWidth)*32
		#print("Chunk pos: (" + str(chunkX) + "," + str(chunkY) + ")")

		for y in range(32):
			currentRow = []
			for x in range(32):
				col = pixels[chunkY + y][chunkX + x]
				currentRow.append(col)
			newChunk.append(currentRow)

		#If the current chunk isn't blank and isn't a duplicate, add it to the list
		if not IsDuplicateChunk(chunks, newChunk) and not IsBlankChunk(newChunk):
			chunks.append(newChunk)

	#Save all the chunks to png files
	for i in range(len(chunks)):
		newFilename = filename.replace(".png","") + "_part" + str(i) + ".png"
		with open(newFilename, 'wb') as f:
			w = png.Writer(32, 32, bitdepth=4, palette=palette)
			w.write(f, chunks[i])
	


#Converts a 4bpp indexed image to a 4bpp file
def ConvertImageTo4BPP(width, height, imageData, pattern):
	tileData = []
	pixels = list(imageData)
	tileWidth = int(width/8)
	tileHeight = int(height/8)
	tiles = tileWidth*tileHeight

	for i in range(tiles):
		tileX = 0
		tileY = 0
		firstHalfIndex = i*32 #Used to keep track of where to add the low bitplane bytes

		if pattern == 0: #Horizontal
			tileX = (i % tileWidth)*8
			tileY = int(i/tileWidth)*8
		else:
			tileX = int(i/tileHeight)*8
			tileY = (i % tileHeight)*8
		
		for y in range(8):
			tileByte1 = 0
			tileByte2 = 0
			tileByte3 = 0
			tileByte4 = 0
			for x in range(8):
				col = pixels[tileY + y][tileX + x]
				#Write each bit of the color to a separate byte for each bitplane
				tileByte1 |= ((col & 1) << (7-x)) #bitplane 0
				tileByte2 |= (((col >> 1) & 1) << (7-x)) #bitplane 1
				tileByte3 |= (((col >> 2) & 1) << (7-x)) #bitplane 2
				tileByte4 |= (((col >> 3) & 1) << (7-x)) #bitplane 3

			#Add the bytes to the tile data list
			#Insert the first two bytes at the end of the first half, and add the last
			#two bytes to the end
			tileData.insert(firstHalfIndex,tileByte1)
			tileData.insert(firstHalfIndex+1,tileByte2)
			tileData.append(tileByte3)
			tileData.append(tileByte4)
			firstHalfIndex += 2

	return bytearray(tileData)


def Compress(imageData, dest, bitDepth):
	debugInfo = False
	tiles = int(len(imageData)/32)

	if bitDepth == 4:
		#Compress tiles in groups of 4
		for i in range(0,tiles,4):
			if debugInfo:
				print("Creating block " + str(int((i / 4))))
			groupByte = 0
			groupData = []

			#For each tile in the group, try each compression method and choose the best one
			for j in range(4):
				if debugInfo:
					print("Compressing tile " + str(j))
				offset = 32 * (i + j)
				tileData = imageData[offset : offset + 32]
				minLength = 0
				blockType = 0
				compressedTileData = []

				#Check if the tile is blank (all 0 bytes)
				blank = True
				
				for b in tileData:
					if b != 0:
						blank = False
						break

				#If the tile is blank, use type 1 (blank tile)
				if blank:
					if debugInfo:
						print("Tile is blank, using type 1")
					blockType = 1
				else:
					#Type 0 (uncompressed)
					compressedTileData = tileData
					minLength = len(compressedTileData)
					blockType = 0

					if debugInfo:
						print("Type 0 size: " + str(len(tileData)))

					#Type 2 (both halves are combined, missing lines are blank)

					tempTileData = []
					#Info value for types 2/3
					tileInfoVal = 0

					for k in range(8):
						lineBit1 = 0; #1st line bit
						lineBit2 = 0; #2nd line bit
						plane1Byte = tileData[k * 2]
						plane2Byte = tileData[k * 2 + 1]
						plane3Byte = tileData[k * 2 + 16]
						plane4Byte = tileData[k * 2 + 16 + 1]

						#Check the first/second half separately

						#If both bytes are 0, then the first line bit is 0 (blank line)
						if plane1Byte == 0 and plane2Byte == 0:
							lineBit1 = 0
						else:
							#Otherwise, add the first two bytes to the list
							lineBit1 = 1
							tempTileData.append(plane1Byte)
							tempTileData.append(plane2Byte)


						#If both bytes are 0, then the second line bit is 0 (blank line)
						if plane3Byte == 0 and plane4Byte == 0:
							lineBit2 = 0
						else:
							lineBit2 = 1
							tempTileData.append(plane3Byte)
							tempTileData.append(plane4Byte)


						#Write the two line bits to the info byte
						tileInfoVal |= ((lineBit2 << (k * 2 + 1)) | (lineBit1 << (k * 2)))
					

					#Write the tile info value
					tempTileData.insert(0, (tileInfoVal >> 8) & 0xFF)
					tempTileData.insert(0, (tileInfoVal & 0xFF))


					if len(tempTileData) < minLength:
						compressedTileData = tempTileData
						minLength = len(tempTileData)
						blockType = 2
					

					if debugInfo:
						print("Type 2 size: " + str(len(tempTileData)))

					#Type 3 (halves are kept separate, missing lines use last defined line (blank by default))

					tempTileData1 = []
					tileInfoVal = 0
					lastLineBytes = [0,0]; #default values
					
					for k in range(16):
						lineBit = 0
						plane1Byte = tileData[k * 2]
						plane2Byte = tileData[k * 2 + 1]

						#If both bytes are the same as the last bytes, then the line bit is 0
						if plane1Byte == lastLineBytes[0] and plane2Byte == lastLineBytes[1]:
							lineBit = 0
						else:
							#Otherwise, add the first two bytes to the list
							lineBit = 1
							tempTileData1.append(plane1Byte)
							tempTileData1.append(plane2Byte)


						lastLineBytes[0] = plane1Byte
						lastLineBytes[1] = plane2Byte

						#Write the line bit to the info byte
						tileInfoVal |= (lineBit << k)
					
					
					#Write the tile info value
					tempTileData1.insert(0, (tileInfoVal >> 8) & 0xFF)
					tempTileData1.insert(0, (tileInfoVal & 0xFF))

					if len(tempTileData1) < minLength:
						compressedTileData = tempTileData1
						minLength = len(tempTileData1)
						blockType = 3
					

					if debugInfo:
						print("Type 3 size: " + str(len(tempTileData1)))
				

				if debugInfo:
					print("Chose type " + str(blockType))

				groupData.extend(compressedTileData)
				#Write the current type to the group byte
				groupByte |= ((blockType & 3) << (j * 2))
			

			#Add the group byte
			groupData.insert(0, groupByte)
			dest.extend(groupData)
	#else:
		#handle 1bpp

	return bytearray(dest) #return as byte array



def CalculateHeaderByte(width, height, unkFlag, pixelOffsetDir, pixelOffset):
	imageType = 0

	if height != 32:
		print("Error: Height must be 32")
		sys.exit(1)

	if width == 16: #Type 1: 16x32, compressed
		imageType = 1
	elif width == 24: #Type 2: 24x32, compressed
		imageType = 2
	elif width == 32: #Type 3: 32x32, compressed
		imageType = 3
	else:
		print("Error: Invalid image header")
		sys.exit(1)
	
	headerByte = 0
	#Write the values to the header byte
	headerByte |= (imageType << 6)
	headerByte |= (pixelOffsetDir << 5)
	headerByte |= (int(unkFlag) << 4)
	headerByte |= (pixelOffset & 0xF)
	#print("Header byte: " + hex(headerByte))
	return headerByte



#Main code

parser = argparse.ArgumentParser(description='Compresses 1bpp/4bpp graphics files into Shiren\'s compressed graphics format.')
parser.add_argument('cmd', type=str,
	help='command (pngto4bpp, compress, split)')
parser.add_argument('-p','--pattern', type=str,
	help='tile pattern to use when converting from png to 1bpp/4bpp (v: vertical, h: horizontal)')
parser.add_argument('--header', action='store_true',
	help="if specified, includes the header byte")
parser.add_argument('filename', type=str,
	help='graphics file name')
args = parser.parse_args()

filename = args.filename


if args.cmd == "compress":
	graphicsDataFile = open(filename, "rb")
	imageData = graphicsDataFile.read()
	tempList = []
	unkFlag = False #is the unknown flag (bit 4) true in the header?
	pixelOffsetInfoStr = ""
	filenameParts = filename.split(".")

	newFilename = filename.replace(".4bpp","")


	#If the header argument was passed, calculate and add the header byte
	if args.header:
		#By default, the offset is 0 and the direction is right
		offsetDir = 0
		offset = 0

		for part in filenameParts:
			#If the filename contains pixel offset information, save it to the pixel offset info string
			if part.startswith("left") or part.startswith("right"):
				pixelOffsetInfoStr = part
				#print(pixelOffsetStr)
			elif part == "unkflag":
				#print("File uses unknown flag")
				unkFlag = True

		if len(pixelOffsetInfoStr) > 0:
			offsetDir = 0 if "right" in pixelOffsetInfoStr else 1 #0 for right, 1 for left
			offsetNumStr = pixelOffsetInfoStr.replace("right","").replace("left","")
			offset = int(offsetNumStr)

		height = 32 #height is always 32
		width = int(len(imageData)/((height*4)/8)) #Calculate the height from the width
		#print(str(width) + "x" + str(height))
		#print("Offset dir: " + ("right" if offsetDir == 0 else "left"))
		#print("Offset: " + str(offset))
		headerByte = CalculateHeaderByte(width,height,unkFlag,offsetDir,offset)
		tempList.append(headerByte) #Add the header byte

	compressedData = Compress(imageData, tempList, 4)

	with open(newFilename + ".4bpp.lz", 'wb') as destinationFile:
		destinationFile.write(compressedData)
		destinationFile.close()
elif args.cmd == "pngto4bpp":
	#Convert the specified png file to a 4bpp file
	imageFile = open(filename, 'rb')
	width, height, pixels, meta = png.Reader(imageFile).read()

	#Use horizontal tile pattern/order by default
	pattern = 0

	if(args.pattern == "h"): #Horizontal
		pattern = 0
	elif(args.pattern == "v"): #Vertical
		pattern = 1
	
	tileData = ConvertImageTo4BPP(width, height, pixels, pattern)
	path = filename.replace(".png",".4bpp")
	
	with open(path, 'wb') as destFile:
		destFile.write(tileData)
		destFile.close()
elif args.cmd == "split":
	#Split the given png file into 32x32 chunks (used mainly for Tainted Insect sprites
	#b/c they're an absolute unit)
	imageFile = open(filename, 'rb')
	reader = png.Reader(imageFile)
	width, height, pixels, meta = reader.read()
	palette = meta['palette']
	SplitImage(width, height, pixels, filename, palette)
