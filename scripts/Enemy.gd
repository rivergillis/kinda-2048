extends KinematicBody2D

class_name Enemy

var current_tile: TileInfo = TileInfo.new()

func _process(delta: float) -> void:
	if GameState.turn == GameState.TurnState.AI_TURN:
		process_ai_turn(delta)

# warning-ignore:unused_argument
func process_ai_turn(delta: float) -> void:
	print("I'm the enemy")
	
	current_tile.x += 1
	current_tile = Utils.clamp_tile_position(current_tile)
	position = Utils.screen_tile_to_px(current_tile)
	GameState.turn = GameState.TurnState.PLAYER_TURN

func initialize() -> void:
	current_tile.x = 1
	current_tile.y = 1
	position = Utils.screen_tile_to_px(current_tile)
	visible = true
