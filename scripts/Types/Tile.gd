extends Object

class_name Tile

var x: int = 0
var y: int = 0

func _to_string() -> String:
	return "Tile(%d, %d)" % [x, y]
