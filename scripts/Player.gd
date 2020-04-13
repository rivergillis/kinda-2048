extends KinematicBody2D

signal player_moved(target_tile)

var current_tile: TileInfo = TileInfo.new()

func _process(delta: float) -> void:
	if GameState.turn == GameState.TurnState.PLAYER_TURN:
		process_player_turn(delta)

# warning-ignore:unused_argument
func process_player_turn(delta: float) -> void:
	var target_tile := TileInfo.new(current_tile.x, current_tile.y)
	if Input.is_action_just_pressed("move_up"):
		target_tile.y -= 1
	elif Input.is_action_just_pressed("move_down"):
		target_tile.y += 1
	elif Input.is_action_just_pressed("move_left"):
		target_tile.x -= 1
	elif Input.is_action_just_pressed("move_right"):
		target_tile.x += 1
	
	# Prevent the player from moving beyond the edge of the screen.
	target_tile = Utils.clamp_tile_position(target_tile)
	
	# Update the position to match the target. If the player moved,
	# set to the AI's turn.
	position = Utils.screen_tile_to_px(target_tile)
	if !current_tile.equals(target_tile):
		emit_signal("player_moved", current_tile)
		GameState.turn = GameState.TurnState.AI_TURN
	current_tile = target_tile

func initialize() -> void:
	current_tile.x = Constants.SCREEN_TILES_HORIZ_UNPADDED / 2
	current_tile.y = Constants.SCREEN_TILES_VERT_UNPADDED / 2
	position = Utils.screen_tile_to_px(current_tile)
	visible = true
