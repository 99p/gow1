extends CharacterBody2D

@export var speed: int = 2

func _process(_delta):
	if Input.is_action_pressed("Left"):
		position.x += -speed
	if Input.is_action_pressed("Right"):
		position.x += speed
	if Input.is_action_pressed("Up"):
		position.y += -speed
	if Input.is_action_pressed("Down"):
		position.y += speed

func dead():
	queue_free()

func _on_get_item(additional_score):
	print('wow')
	speed += additional_score / 10
