extends Button

@export var main_scene: PackedScene

func _on_pressed():
	get_tree().change_scene_to_packed(main_scene)
