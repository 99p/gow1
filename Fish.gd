extends Area2D

func _process(_delta):
	position.x += -1

func _on_body_entered(body:Node2D):
	if body.is_in_group("player"):
		body.dead()
