#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

//TODO: cleanup/improve this file

uint8_t *compressed = NULL;
char* filename = NULL;
int skipHeaderByte = 0;

int startsWith(const char *str, const char *pre)
{
    size_t lenpre = strlen(pre),
           lenstr = strlen(str);
    return lenstr < lenpre ? 0 : memcmp(pre, str, lenpre) == 0;
}

int CalculateHeaderByte(int length){
	int pixelOffset = 0;
	int pixelOffsetDir = 0; //right by default
	int unkFlag = 0;
	int height = 32; //height is always 32
	int width = length/(height/2); //Manually derive the width from the height

	char* filenameTemp = strdup(filename);

	//Iterate over every part of the filename to find any special info
	char* currentPart = strtok(filenameTemp, ".");

	while(currentPart != NULL){
		if(startsWith(currentPart, "right")){
			pixelOffsetDir = 0;
			pixelOffset = atoi(currentPart + 5); //Convert the number in the string to a number
			if(pixelOffset == 0){
				printf("Error: Invalid format. Should be .right[number]");
				exit(EXIT_FAILURE);
			}
		}else if(startsWith(currentPart, "left")){
			pixelOffsetDir = 1;
			pixelOffset = atoi(currentPart + 4); //Convert the number in the string to a number
			if(pixelOffset == 0){
				printf("Error: Invalid format. Should be .left[number]");
				exit(EXIT_FAILURE);
			}
		}else if(startsWith(currentPart, "unkflag")){
			unkFlag = 1;
		}
		//Get the next part
		currentPart = strtok(NULL, ".");
	}

	int imageType = 0;

	if(width == 16) imageType = 1;
	else if(width == 24) imageType = 2;
	else if(width == 32) imageType = 3;
	else{
		printf("Error: width must be 16/24/32");
		exit(EXIT_FAILURE);
	}

	//Create the header byte, and return it
	int headerByte = (imageType << 6) | (pixelOffsetDir << 5) | (unkFlag << 4) | (pixelOffset & 0xF);
	return headerByte;
}

//TODO: add support for 1bpp images
int compress(uint8_t* imageData, int uncompressedSize, int bitDepth) {
	int debugInfo = 0;
	int tiles = uncompressedSize/32;
    int index = 0;

	//If the header byte should be included, calculate it and save it to the array at the beginning
	if(!skipHeaderByte){
		compressed[0] = CalculateHeaderByte(uncompressedSize);
		index++;
	}

	//Temp arrays
	//TODO: find a better solution than this
	uint8_t compressedTileData[32*2];
	uint8_t tempTileData[32*2];

	if (bitDepth == 4) {
		//Compress tiles in groups of 4
		for (int i = 0; i < tiles; i += 4) {
			if (debugInfo) printf("Creating block %d\n",(i / 4));
			uint8_t groupByte = 0;
			int groupLength = 0;
			int tempIndex = index;

			//For each tile in the group, try each compression method and choose the best one
			for (int j = 0; j < 4; j++) {
				if (debugInfo) printf("Compressing tile %d\n",j);

				uint8_t* tilePtr = imageData + 32*(i + j);
				int minLength = 0;
				int type = 0;

				//Check if the tile is blank (all 0 bytes)
				int blank = 1;

				for(int k = 0; k < 32; k++) {
					if (tilePtr[k] != 0) {
						blank = 0;
						break;
					}
				}

				//If the tile is blank, use type 1 (blank tile)
				if (blank == 1) {
					if (debugInfo) printf("Tile is blank, using type 1\n");
					type = 1;
				} else {
					//Type 0 (uncompressed)
					memcpy(compressedTileData, tilePtr, 32); //Copy the current tile to the temp array
					minLength = 32;
					type = 0;

					//Type 2 (both halves are combined, missing lines are blank)

					
					//Info value for types 2/3
					uint16_t tileInfoVal = 0;
					int tempArrayIndex = 2; //Start at index 2 to leave room for the info bytes

					for (int k = 0; k < 8; k++) {
						int lineBit1; //1st line bit
						int lineBit2; //2nd line bit
						uint8_t plane1Byte = tilePtr[k * 2];
						uint8_t plane2Byte = tilePtr[k * 2 + 1];
						uint8_t plane3Byte = tilePtr[k * 2 + 16];
						uint8_t plane4Byte = tilePtr[k * 2 + 16 + 1];

						//Check the first/second half separately

						//If both bytes are 0, then the first line bit is 0 (blank line)
						if (plane1Byte == 0 && plane2Byte == 0) {
							lineBit1 = 0;
						} else {
							//Otherwise, add the first two bytes to the list
							lineBit1 = 1;
							tempTileData[tempArrayIndex++] = plane1Byte;
							tempTileData[tempArrayIndex++] = plane2Byte;
						}

						//If both bytes are 0, then the second line bit is 0 (blank line)
						if (plane3Byte == 0 && plane4Byte == 0) {
							lineBit2 = 0;
						} else {
							lineBit2 = 1;
							tempTileData[tempArrayIndex++] = plane3Byte;
							tempTileData[tempArrayIndex++] = plane4Byte;
						}

						//Write the two line bits to the info byte
						tileInfoVal |= (uint16_t)((lineBit2 << (k * 2 + 1)) | (lineBit1 << (k * 2)));
					}

					tempTileData[0] =  (uint8_t)(tileInfoVal & 0xFF);
					tempTileData[1] =  (uint8_t)(tileInfoVal >> 8);
					

					int length = tempArrayIndex;

					if(debugInfo)printf("Type 2 info val: %x\n",tileInfoVal);

					if (length < minLength) {
						memcpy(compressedTileData, tempTileData, length);
						minLength = length;
						type = 2;
					}

					if (debugInfo) printf("Type 2 size: %d\n",length);

					//Type 3 (halves are kept separate, missing lines use last defined line (blank by default))

					tempArrayIndex = 2;
					tileInfoVal = 0;
					uint8_t lastLineBytes[2] = {0,0};

					for (int k = 0; k < 16; k++) {
						int lineBit;
						uint8_t plane1Byte = tilePtr[k * 2];
						uint8_t plane2Byte = tilePtr[k * 2 + 1];

						//If both bytes are the same as the last bytes, then the line bit is 0
						if (plane1Byte == lastLineBytes[0] && plane2Byte == lastLineBytes[1]) {
							lineBit = 0;
						} else {
							//Otherwise, add the first two bytes to the list
							lineBit = 1;
							tempTileData[tempArrayIndex++] = plane1Byte;
							tempTileData[tempArrayIndex++] = plane2Byte;
						}

						lastLineBytes[0] = plane1Byte;
						lastLineBytes[1] = plane2Byte;

						//Write the line bit to the info byte
						tileInfoVal |= (uint16_t)(lineBit << k);
					}

					tempTileData[0] =  (uint8_t)(tileInfoVal & 0xFF);
					tempTileData[1] =  (uint8_t)(tileInfoVal >> 8);

					length = tempArrayIndex;

					if(debugInfo)printf("Type 3 info val: %x\n",tileInfoVal);

					if (length < minLength) {
						memcpy(compressedTileData,tempTileData,length);
						minLength = length;
						type = 3;
					}

					if (debugInfo) printf("Type 3 size: %d\n",length);
				}

				if (debugInfo) printf("Chose type %d\n",type);
				uint8_t* destPtr = compressed + tempIndex + (j == 0 ? 1 : 0); //Only add 1 to the destination offset if this is the first tile to leave room for the group byte
				memcpy(destPtr, compressedTileData, minLength); //Write the compressed tile to the compressed data array
				tempIndex += minLength + (j == 0 ? 1 : 0);
				groupLength += minLength + (j == 0 ? 1 : 0);
				//Write the current type to the group byte
				groupByte |= (uint8_t)((type & 3) << (j * 2));
			}

			//Add the group byte
			compressed[index] = groupByte;
			index += groupLength;
		}
	} else {
		//handle 1bpp
	}

    return index;
}


int main(int argc, char *argv[]) {
    if (argc < 3)
	{
		fputs("Usage: gfxcompress [--noheader] infile.4bpp outfile.4bpp.lz\n", stderr);
		return EXIT_FAILURE;
	}

    int argOffset = 0;

    if(!strcmp(argv[1], "--noheader")){
    	skipHeaderByte = 1;
    	argOffset = 1;
    }

	char *infile = argv[1 + argOffset];
	char *outfile = argv[2 + argOffset];

	filename = infile;

	FILE *f = fopen(infile, "rb");
	if (!f) {
		fprintf(stderr, "failed to open for reading: '%s'\n", infile);
		return EXIT_FAILURE;
	}
	fseek(f, 0, SEEK_END);
	int filesize = ftell(f);

	uint8_t *data = (uint8_t *)calloc(filesize, 1);
	fseek(f, 0, SEEK_SET);
	int size = fread(data, 1, filesize, f);
	fclose(f);
	if (size != filesize) {
		fprintf(stderr, "failed to read: '%s'\n", infile);
		return EXIT_FAILURE;
	}

	/*Allocate 2 times the uncompressed size of space for the compressed file to account for the worst case (1.25x),
	even if it's extremely unlikely to ever even be more than the uncompressed file. */
    compressed = (uint8_t *)calloc(filesize * 2, 1);

	int compressed_size = compress(data,filesize,4);

	free(data);

	f = fopen(outfile, "wb");
	if (!f) {
		fprintf(stderr, "failed to open for writing: '%s'\n", outfile);
		return EXIT_FAILURE;
	}
	fwrite(compressed, 1, compressed_size, f);
	fclose(f);

	free(compressed);

	return EXIT_SUCCESS;
}