// Copyright (c) 2015 YamaArashi

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "global.h"
#include "gfx.h"
#include "util.h"

#define GET_GBA_PAL_RED(x)   (((x) >>  0) & 0x1F)
#define GET_GBA_PAL_GREEN(x) (((x) >>  5) & 0x1F)
#define GET_GBA_PAL_BLUE(x)  (((x) >> 10) & 0x1F)

#define SET_GBA_PAL(r, g, b) (((b) << 10) | ((g) << 5) | (r))

#define UPCONVERT_BIT_DEPTH(x) (((x) * 255) / 31)

#define DOWNCONVERT_BIT_DEPTH(x) ((x) / 8)

static void AdvanceMetatilePosition(int *subTileX, int *subTileY, int *metatileX, int *metatileY, int metatilesWide, int metatileWidth, int metatileHeight)
{
	(*subTileX)++;

	if (*subTileX == metatileWidth) {
		*subTileX = 0;
		(*subTileY)++;
		if (*subTileY == metatileHeight) {
			*subTileY = 0;
			(*metatileX)++;
			if (*metatileX == metatilesWide) {
				*metatileX = 0;
				(*metatileY)++;
			}
		}
	}
}


static void ConvertFromTiles1Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = metatilesWide * metatileWidth;

	for (int i = 0; i < numTiles; i++) {
		for (int j = 0; j < 8; j++) {
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;
			int destX = metatileX * metatileWidth + subTileX;
			unsigned char srcPixelOctet = *src++;
			unsigned char *destPixelOctet = &dest[destY * pitch + destX];

			for (int k = 0; k < 8; k++) {
				*destPixelOctet <<= 1;
				*destPixelOctet |= (srcPixelOctet & 1) ^ invertColors;
				srcPixelOctet >>= 1;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertFromTiles4Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 4;

	for (int i = 0; i < numTiles; i++) {
		for (int j = 0; j < 8; j++) {
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 4; k++) {
				int destX = (metatileX * metatileWidth + subTileX) * 4 + k;
				unsigned char srcPixelPair = *src++;
				unsigned char leftPixel = srcPixelPair & 0xF;
				unsigned char rightPixel = srcPixelPair >> 4;

				if (invertColors) {
					leftPixel = 15 - leftPixel;
					rightPixel = 15 - rightPixel;
				}

				dest[destY * pitch + destX] = (leftPixel << 4) | rightPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertFromTiles8Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 8;

	for (int i = 0; i < numTiles; i++) {
		for (int j = 0; j < 8; j++) {
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 8; k++) {
				int destX = (metatileX * metatileWidth + subTileX) * 8 + k;
				unsigned char srcPixel = *src++;

				if (invertColors)
					srcPixel = 255 - srcPixel;

				dest[destY * pitch + destX] = srcPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToTiles1Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = metatilesWide * metatileWidth;

	for (int i = 0; i < numTiles; i++) {
		for (int j = 0; j < 8; j++) {
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;
			int srcX = metatileX * metatileWidth + subTileX;
			unsigned char srcPixelOctet = src[srcY * pitch + srcX];

			*dest = srcPixelOctet ^ invertColors;
			dest++;
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToTiles4Bpp(unsigned char *src, unsigned char *dest, int numTiles, int tileWidth, int tileHeight, bool invertColors, int tileDirection)
{

	for(int i = 0; i < numTiles; i++){
		int tileX = 0;
		int tileY = 0;

		if(tileDirection == TILE_DIR_HORIZONTAL){
			tileX = (i % tileWidth)*4;
			tileY = (i/tileWidth)*8;
		}else{
			tileX = (i/tileHeight)*4;
			tileY = (i % tileHeight)*8;
		}
		
		for(int y = 0; y < 8; y++){
			unsigned char tileByte1 = 0;
			unsigned char tileByte2 = 0;
			unsigned char tileByte3 = 0;
			unsigned char tileByte4 = 0;

			for(int x = 0; x < 8; x++){
				int posX = tileX + x/2;
				int posY = tileY + y;
				unsigned char pixelPair = src[posY*(tileWidth*4) + posX];
				//Get either the left or right pixel value from the byte depending on the current x position
				unsigned char col;
				if(x % 2 == 0){
					col = pixelPair >> 4;
				}else{
					col = pixelPair & 0xF;
				}

				if(invertColors) col = 15 - col;
				//Write each bit of the color to a separate byte for each bitplane
				tileByte1 |= ((col & 1) << (7-x)); //bitplane 0
				tileByte2 |= (((col >> 1) & 1) << (7-x)); //bitplane 1
				tileByte3 |= (((col >> 2) & 1) << (7-x)); //bitplane 2
				tileByte4 |= (((col >> 3) & 1) << (7-x)); //bitplane 3
			}

			//Write the bytes to the tile data list
			dest[i*32 + y*2] = tileByte1;
			dest[i*32 + y*2 + 1] = tileByte2;
			dest[i*32 + 16 + y*2] = tileByte3;
			dest[i*32 + 16 + y*2 + 1] = tileByte4;
		}
	}
}

static void ConvertToTiles8Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 8;

	for (int i = 0; i < numTiles; i++) {
		for (int j = 0; j < 8; j++) {
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 8; k++) {
				int srcX = (metatileX * metatileWidth + subTileX) * 8 + k;
				unsigned char srcPixel = src[srcY * pitch + srcX];

				if (invertColors)
					srcPixel = 255 - srcPixel;

				*dest++ = srcPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void DecodeAffineTilemap(unsigned char *input, unsigned char *output, unsigned char *tilemap, int tileSize, int numTiles)
{
    for (int i = 0; i < numTiles; i++)
    {
        memcpy(&output[i * tileSize], &input[tilemap[i] * tileSize], tileSize);
    }
}

#define REVERSE_BIT_ORDER(x) ({ \
      ((((x) >> 7) & 1) << 0)   \
    | ((((x) >> 6) & 1) << 1)   \
    | ((((x) >> 5) & 1) << 2)   \
    | ((((x) >> 4) & 1) << 3)   \
    | ((((x) >> 3) & 1) << 4)   \
    | ((((x) >> 2) & 1) << 5)   \
    | ((((x) >> 1) & 1) << 6)   \
    | ((((x) >> 0) & 1) << 7);  \
})

#define SWAP_BYTES(a, b) ({   \
    unsigned char tmp = *(a); \
    *(a) = *(b);              \
    *(b) = tmp;               \
})

#define NSWAP(x) ({ (((x) >> 4) & 0xF) | (((x) << 4) & 0xF0); })

#define SWAP_NYBBLES(a, b) ({        \
    unsigned char tmp = NSWAP(*(a)); \
    *(a) = NSWAP(*(b));              \
    *(b) = tmp;                      \
})

static void VflipTile(unsigned char * tile, int bitDepth)
{
    int i;
    switch (bitDepth)
    {
    case 1:
        SWAP_BYTES(&tile[0], &tile[7]);
        SWAP_BYTES(&tile[1], &tile[6]);
        SWAP_BYTES(&tile[2], &tile[5]);
        SWAP_BYTES(&tile[3], &tile[4]);
        break;
    case 4:
        for (i = 0; i < 4; i++)
        {
            SWAP_BYTES(&tile[i + 0], &tile[i + 28]);
            SWAP_BYTES(&tile[i + 4], &tile[i + 24]);
            SWAP_BYTES(&tile[i + 8], &tile[i + 20]);
            SWAP_BYTES(&tile[i + 12], &tile[i + 16]);
        }
        break;
    case 8:
        for (i = 0; i < 8; i++)
        {
            SWAP_BYTES(&tile[i + 0], &tile[i + 56]);
            SWAP_BYTES(&tile[i + 8], &tile[i + 48]);
            SWAP_BYTES(&tile[i + 16], &tile[i + 40]);
            SWAP_BYTES(&tile[i + 24], &tile[i + 32]);
        }
        break;
    }
}

static void HflipTile(unsigned char * tile, int bitDepth)
{
    int i;
    switch (bitDepth)
    {
    case 1:
        for (i = 0; i < 8; i++)
            tile[i] = REVERSE_BIT_ORDER(tile[i]);
        break;
    case 4:
        for (i = 0; i < 8; i++)
        {
            SWAP_NYBBLES(&tile[4 * i + 0], &tile[4 * i + 3]);
            SWAP_NYBBLES(&tile[4 * i + 1], &tile[4 * i + 2]);
        }
        break;
    case 8:
        for (i = 0; i < 8; i++)
        {
            SWAP_BYTES(&tile[8 * i + 0], &tile[8 * i + 7]);
            SWAP_BYTES(&tile[8 * i + 1], &tile[8 * i + 6]);
            SWAP_BYTES(&tile[8 * i + 2], &tile[8 * i + 5]);
            SWAP_BYTES(&tile[8 * i + 3], &tile[8 * i + 4]);
        }
        break;
    }
}

static void DecodeNonAffineTilemap(unsigned char *input, unsigned char *output, struct NonAffineTile *tilemap, int tileSize, int outTileSize, int bitDepth, int numTiles)
{
    unsigned char * in_tile;
    unsigned char * out_tile = output;
    int effectiveBitDepth = tileSize == outTileSize ? bitDepth : 8;
    for (int i = 0; i < numTiles; i++)
    {
        in_tile = &input[tilemap[i].index * tileSize];
        if (tileSize == outTileSize)
            memcpy(out_tile, in_tile, tileSize);
        else
        {
            for (int j = 0; j < 64; j++)
            {
                int shift = (j & 1) * 4;
                out_tile[j] = (in_tile[j / 2] & (0xF << shift)) >> shift;
            }
        }
        if (tilemap[i].hflip)
            HflipTile(out_tile, effectiveBitDepth);
        if (tilemap[i].vflip)
            VflipTile(out_tile, effectiveBitDepth);
        if (bitDepth == 4 && effectiveBitDepth == 8)
        {
            for (int j = 0; j < 64; j++)
            {
                out_tile[j] &= 0xF;
                out_tile[j] |= (15 - tilemap[i].palno) << 4;
            }
        }
        out_tile += outTileSize;
    }
}

static unsigned char *DecodeTilemap(unsigned char *tiles, struct Tilemap *tilemap, int *numTiles_p, bool isAffine, int tileSize, int outTileSize, int bitDepth)
{
    int mapTileSize = isAffine ? 1 : 2;
    int numTiles = tilemap->size / mapTileSize;
    unsigned char *decoded = calloc(numTiles, outTileSize);
    if (isAffine)
        DecodeAffineTilemap(tiles, decoded, tilemap->data.affine, tileSize, numTiles);
    else
        DecodeNonAffineTilemap(tiles, decoded, tilemap->data.non_affine, tileSize, outTileSize, bitDepth, numTiles);
    free(tiles);
    *numTiles_p = numTiles;
    return decoded;
}

void ReadImage(char *path, int tilesWidth, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors)
{
	int tileSize = bitDepth * 8;

	int fileSize;
	unsigned char *buffer = ReadWholeFile(path, &fileSize);

	int numTiles = fileSize / tileSize;
	if (image->tilemap.data.affine != NULL)
    {
	    int outTileSize = (bitDepth == 4 && image->palette.numColors > 16) ? 64 : tileSize;
        buffer = DecodeTilemap(buffer, &image->tilemap, &numTiles, image->isAffine, tileSize, outTileSize, bitDepth);
        if (outTileSize == 64)
        {
            tileSize = 64;
            image->bitDepth = bitDepth = 8;
        }
    }

	int tilesHeight = (numTiles + tilesWidth - 1) / tilesWidth;

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	image->width = tilesWidth * 8;
	image->height = tilesHeight * 8;
	image->bitDepth = bitDepth;
	image->pixels = calloc(tilesWidth * tilesHeight, tileSize);

	if (image->pixels == NULL)
		FATAL_ERROR("Failed to allocate memory for pixels.\n");

	int metatilesWide = tilesWidth / metatileWidth;

	switch (bitDepth) {
	case 1:
		ConvertFromTiles1Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		ConvertFromTiles4Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 8:
		ConvertFromTiles8Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	}

	free(buffer);
}

void WriteImage(char *path, enum NumTilesMode numTilesMode, int numTiles, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors, int tileDirection)
{
	int tileSize = bitDepth * 8;

	if (image->width % 8 != 0)
		FATAL_ERROR("The width in pixels (%d) isn't a multiple of 8.\n", image->width);

	if (image->height % 8 != 0)
		FATAL_ERROR("The height in pixels (%d) isn't a multiple of 8.\n", image->height);

	int tilesWidth = image->width / 8;
	int tilesHeight = image->height / 8;

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	int maxNumTiles = tilesWidth * tilesHeight;

	if (numTiles == 0)
		numTiles = maxNumTiles;
	else if (numTiles > maxNumTiles)
		FATAL_ERROR("The specified number of tiles (%d) is greater than the maximum possible value (%d).\n", numTiles, maxNumTiles);

	int bufferSize = numTiles * tileSize;
	int maxBufferSize = maxNumTiles * tileSize;
	unsigned char *buffer = malloc(maxBufferSize);

	if (buffer == NULL)
		FATAL_ERROR("Failed to allocate memory for pixels.\n");

	int metatilesWide = tilesWidth / metatileWidth;

	switch (bitDepth) {
	case 1:
		ConvertToTiles1Bpp(image->pixels, buffer, maxNumTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		ConvertToTiles4Bpp(image->pixels, buffer, maxNumTiles, tilesWidth, tilesHeight, invertColors, tileDirection);
		break;
	case 8:
		ConvertToTiles8Bpp(image->pixels, buffer, maxNumTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	}

	bool zeroPadded = true;
	for (int i = bufferSize; i < maxBufferSize && zeroPadded; i++) {
		if (buffer[i] != 0)
		{
			switch (numTilesMode)
			{
			case NUM_TILES_IGNORE:
				break;
			case NUM_TILES_WARN:
				fprintf(stderr, "Ignoring -num_tiles %d because tile %d contains non-transparent pixels.\n", numTiles, 1 + i / tileSize);
				zeroPadded = false;
				break;
			case NUM_TILES_ERROR:
				FATAL_ERROR("Tile %d contains non-transparent pixels.\n", 1 + i / tileSize);
				break;
			}
		}
	}

	WriteWholeFile(path, buffer, zeroPadded ? bufferSize : maxBufferSize);

	free(buffer);
}

void FreeImage(struct Image *image)
{
    if (image->tilemap.data.affine != NULL)
    {
        free(image->tilemap.data.affine);
        image->tilemap.data.affine = NULL;
    }
	free(image->pixels);
	image->pixels = NULL;
}

void ReadGbaPalette(char *path, struct Palette *palette)
{
	int fileSize;
	unsigned char *data = ReadWholeFile(path, &fileSize);

	if (fileSize % 2 != 0)
		FATAL_ERROR("The file size (%d) is not a multiple of 2.\n", fileSize);

	palette->numColors = fileSize / 2;

	for (int i = 0; i < palette->numColors; i++) {
		uint16_t paletteEntry = (data[i * 2 + 1] << 8) | data[i * 2];
		palette->colors[i].red = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_RED(paletteEntry));
		palette->colors[i].green = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_GREEN(paletteEntry));
		palette->colors[i].blue = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_BLUE(paletteEntry));
	}
	// png can only accept 16 or 256 colors, so fill the remainder with black
	if (palette->numColors > 16)
    {
	    memset(&palette->colors[palette->numColors], 0, (256 - palette->numColors) * sizeof(struct Color));
	    palette->numColors = 256;
    }

	free(data);
}

void WriteGbaPalette(char *path, struct Palette *palette)
{
	FILE *fp = fopen(path, "wb");

	if (fp == NULL)
		FATAL_ERROR("Failed to open \"%s\" for writing.\n", path);

	for (int i = 0; i < palette->numColors; i++) {
		unsigned char red = DOWNCONVERT_BIT_DEPTH(palette->colors[i].red);
		unsigned char green = DOWNCONVERT_BIT_DEPTH(palette->colors[i].green);
		unsigned char blue = DOWNCONVERT_BIT_DEPTH(palette->colors[i].blue);

		uint16_t paletteEntry = SET_GBA_PAL(red, green, blue);

		fputc(paletteEntry & 0xFF, fp);
		fputc(paletteEntry >> 8, fp);
	}

	fclose(fp);
}
