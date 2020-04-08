extends KinematicBody2D

class_name Player

var current_tile: Tile = Tile.new()

# warning-ignore:unused_argument
func _process(delta: float) -> void:
	# TODO: Do everything in tile coords, then convert to world coords.
	Utils.to_world(current_tile)
	if Input.is_action_just_pressed("move_up"):
		position.y -= Constants.TILE_SIZE
	elif Input.is_action_just_pressed("move_down"):
		position.y += Constants.TILE_SIZE
	elif Input.is_action_just_pressed("move_left"):
		position.x -= Constants.TILE_SIZE
	elif Input.is_action_just_pressed("move_right"):
		position.x += Constants.TILE_SIZE
		
	# Prevent the player from moving beyond the edge of the screen.
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, Constants.HALF_TILE,
			screen_size.x - Constants.HALF_TILE)
	position.y = clamp(position.y, Constants.HALF_TILE,
			screen_size.x - Constants.HALF_TILE)

