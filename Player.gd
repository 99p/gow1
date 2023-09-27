extends CharacterBody2D

const Bullet = preload("res://bullet.tscn")
@export var speed: int = 2

func _process(_delta):
	# if Input.is_action_pressed("Left"):
	# 	position.x += -speed
	# if Input.is_action_pressed("Right"):
	# 	position.x += speed
	# if Input.is_action_pressed("Up"):
	# 	position.y += -speed
	# if Input.is_action_pressed("Down"):
	# 	position.y += speed
	position += Input.get_vector("Left", "Right", "Up", "Down") * speed

	if Input.is_action_pressed("Fire") && $FireRateTimer.time_left == 0:
		fire()

func dead():
	queue_free()

func _on_get_item(additional_score):
	speed += additional_score / 10

func fire():
	var bullet = Bullet.instantiate()
	get_tree().get_root().add_child(bullet)
	bullet.global_position = global_position
	$FireRateTimer.start()
