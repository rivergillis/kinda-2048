extends KinematicBody2D

class_name Enemy

var current_tile: TileInfo = TileInfo.new()
var player_tile: TileInfo = TileInfo.new()

func _ready() -> void:
	$"../Player".connect("player_moved", self, "on_player_moved")

func _process(delta: float) -> void:
	if GameState.turn == GameState.TurnState.AI_TURN:
		process_ai_turn(delta)

# warning-ignore:unused_argument
func process_ai_turn(delta: float) -> void:
	var xdiff = clamp(player_tile.x - current_tile.x, -1, 1)
	var ydiff = clamp(player_tile.y - current_tile.y, -1, 1)
	if xdiff != 0:
		current_tile.x += xdiff
	elif ydiff != 0:
		current_tile.y += ydiff
	current_tile = Utils.clamp_tile_position(current_tile)
	position = Utils.screen_tile_to_px(current_tile)
	GameState.turn = GameState.TurnState.PLAYER_TURN

func initialize() -> void:
	current_tile.x = 1
	current_tile.y = 1
	position = Utils.screen_tile_to_px(current_tile)
	visible = true
	
func on_player_moved(target_tile: TileInfo) -> void:
	player_tile = target_tile
