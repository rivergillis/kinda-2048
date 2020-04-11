extends Label

func _process(delta: float) -> void:
	if GameState.turn == GameState.TurnState.PLAYER_TURN:
		text = "Player Turn"
	elif GameState.turn == GameState.TurnState.AI_TURN:
		text = "AI Turn"
	else:
		text = "Unknown Turn"
