extends Object

class_name Utils

# Converts a tile position in screen space to pixel coordinates
# NOTE: Returned pixel coordinates are for the middle of the tile.
static func screen_tile_to_px(tile: TileInfo) -> Vector2:
	return Vector2(tile.x * Constants.TILE_SIZE + Constants.HALF_TILE,
			tile.y * Constants.TILE_SIZE + Constants.HALF_TILE)

# Clamps tile to be within the bounds of the screen.
# TODO: padding
static func clamp_tile_position(tile: TileInfo) -> TileInfo:
	if tile.x < 0:
		tile.x = 0
	if tile.y < 0:
		tile.y = 0
	if tile.x >= Constants.SCREEN_TILES_HORIZ_UNPADDED:
		tile.x = Constants.SCREEN_TILES_HORIZ_UNPADDED - 1
	if tile.y >= Constants.SCREEN_TILES_VERT_UNPADDED:
		tile.y = Constants.SCREEN_TILES_VERT_UNPADDED - 1
	return tile

# Converts a Vector2 position in pixels to a correspond screen-tile position.
static func px_to_screen_tile(px: Vector2) -> TileInfo:
	# TODO
	var tile = TileInfo.new()
	return tile
