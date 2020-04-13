extends Node2D

class_name WorldGen

const TileBG = preload("res://scenes/TileBG.tscn")
const Player = preload("res://scenes/Player.tscn")
const Enemy = preload("res://scenes/Enemy.tscn")

# TODO: Seperate world generation and game start.
# Game start should in a GameConductor

func _ready() -> void:
	generate_world()

func generate_world() -> void:
	for y_tile in range(1, Constants.SCREEN_TILES_VERT + 1):
		for x_tile in range(1, Constants.SCREEN_TILES_HORIZ + 1):
			var tile : TileInfo = TileInfo.new(x_tile, y_tile)
			var tile_bg = TileBG.instance()
			tile_bg.position = Utils.screen_tile_to_px(tile)
			add_child(tile_bg)
	GameState.turn = GameState.TurnState.PLAYER_TURN
	var player = Player.instance()
	player.initialize()
	add_child(player)
	var enemy = Enemy.instance()
	enemy.initialize()
	add_child(enemy)

