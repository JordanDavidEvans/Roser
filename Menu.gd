extends Control

@onready var viewport_size = get_viewport().size
func _ready():
	size = viewport_size / 2
	position = viewport_size / 2

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Level.tscn")
	pass # Replace with function body.



func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
