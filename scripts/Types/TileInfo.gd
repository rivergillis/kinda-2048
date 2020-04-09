extends Object

class_name TileInfo

# Coordinates in screen-tile space
var x: int = 0
var y: int = 0
# TODO: Coordinates in world-tile space

func _init(x: int = 0, y: int = 0) -> void:
	self.x = x
	self.y = y

func _to_string() -> String:
	return "TileInfo(%d, %d)" % [x, y]
