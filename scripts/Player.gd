extends KinematicBody2D

class_name Player

var current_tile: TileInfo = TileInfo.new()

# warning-ignore:unused_argument
func _process(delta: float) -> void:
	# TODO: Do everything in tile coords, then convert to world coords.

	if Input.is_action_just_pressed("move_up"):
		current_tile.y -= 1
	elif Input.is_action_just_pressed("move_down"):
		current_tile.y += 1
	elif Input.is_action_just_pressed("move_left"):
		current_tile.x -= 1
	elif Input.is_action_just_pressed("move_right"):
		current_tile.x += 1
	
	# Prevent the player from moving beyond the edge of the screen.
	current_tile = Utils.clamp_tile_position(current_tile)
	
	position = Utils.screen_tile_to_px(current_tile)

