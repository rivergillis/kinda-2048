extends Object

class_name TileInfo

enum Space { SCREEN, WORLD }

# Coordinates in screen-tile space
var x: int = 0
var y: int = 0
# TODO: Coordinates in world-tile space

func _init(x: int = 0, y: int = 0) -> void:
	self.x = x
	self.y = y

func _to_string() -> String:
	return "TileInfo(%d, %d)" % [x, y]

# Compares equality against another tile, uses space (a Space)
# to determine whether to compare for equality in screen or world
# tile space.
func equals(other: TileInfo, space: int = Space.SCREEN) -> bool:
	match space:
		Space.SCREEN:
			return x == other.x and y == other.y
		Space.WORLD:
			print("World space comparison not implemented.")
			return false
		_:
			return false
