extends Object

class_name Utils

# Converts a tile position in screen space to pixel coordinates
# NOTE: Returned pixel coordinates are for the middle of the tile.
static func screen_tile_to_px(tile: TileInfo) -> Vector2:
	return Vector2(tile.x * Constants.TILE_SIZE + Constants.HALF_TILE,
			tile.y * Constants.TILE_SIZE + Constants.HALF_TILE)

# Clamps tile to be within the bounds of the screen, including padding.
static func clamp_tile_position(tile: TileInfo) -> TileInfo:
	if tile.x < Constants.TILE_PADDING:
		tile.x = Constants.TILE_PADDING
	if tile.y < Constants.TILE_PADDING:
		tile.y = Constants.TILE_PADDING
	if tile.x >= Constants.SCREEN_TILES_HORIZ:
		tile.x = Constants.SCREEN_TILES_HORIZ
	if tile.y >= Constants.SCREEN_TILES_VERT:
		tile.y = Constants.SCREEN_TILES_VERT
	return tile

# Converts a Vector2 position in pixels to a correspond screen-tile position.
# warning-ignore:unused_argument
static func px_to_screen_tile(px: Vector2) -> TileInfo:
	# TODO
	var tile = TileInfo.new()
	return tile
