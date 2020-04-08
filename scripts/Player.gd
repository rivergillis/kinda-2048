extends KinematicBody2D

class_name Player

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("move_up"):
		position.y -= Globals.TILE_SIZE
	elif Input.is_action_just_pressed("move_down"):
		position.y += Globals.TILE_SIZE
	elif Input.is_action_just_pressed("move_left"):
		position.x -= Globals.TILE_SIZE
	elif Input.is_action_just_pressed("move_right"):
		position.x += Globals.TILE_SIZE
