extends Control

@onready var score: int = 0

func _on_score(additional_score: int):
	score += additional_score
	$value.text = str(score)
