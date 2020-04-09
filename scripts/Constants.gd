extends Node

# singleton

# Tile size in px
const TILE_SIZE : int = 16
const HALF_TILE : int = TILE_SIZE / 2

# Number of tiles on the screen, counting the tiles used for padding.
const SCREEN_TILES_HORIZ_UNPADDED : int = 9
const SCREEN_TILES_VERT_UNPADDED : int = 16

# Number of tiles uses for padding on each edge of the screen.
const TILE_PADDING : int = 1

# Number of tiles on the screen, not counting the tiles used for padding.
const SCREEN_TILES_HORIZ : int = \
		SCREEN_TILES_HORIZ_UNPADDED - (2 * TILE_PADDING)
const SCREEN_TILES_VERT : int = \
		SCREEN_TILES_VERT_UNPADDED - (2 * TILE_PADDING)
