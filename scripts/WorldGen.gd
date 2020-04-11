extends Node2D

class_name WorldGen

const TileBG = preload("res://scenes/TileBG.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for y_tile in range(1, Constants.SCREEN_TILES_VERT + 1):
		for x_tile in range(1, Constants.SCREEN_TILES_HORIZ + 1):
			var tile : TileInfo = TileInfo.new(x_tile, y_tile)
			var tile_bg = TileBG.instance()
			tile_bg.position = Utils.screen_tile_to_px(tile)
			add_child(tile_bg)
	GameState.turn = GameState.TurnState.PLAYER_TURN
	$Player.initialize()
	$Enemy.initialize()
