extends Node2D

func _ready():
	for item in get_tree().get_nodes_in_group("item"):
		item.get_item.connect($Score._on_score)
		item.get_item.connect($Player._on_get_item)
