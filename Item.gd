extends Area2D

signal get_item(score)

func _ready():
	var score = get_node_or_null("Score")
	if score:
		get_item.connect(score._on_score)

func _process(_delta):
	position.y += 1

func _on_body_entered(_body:Node2D):
	get_item.emit(20)
	queue_free()
