extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"death music".pitch_scale = 1 + $"the void".modulate.a
	$tunnel.modulate.a = $"the void".modulate.a
	AudioServer.get_bus_effect(0,0).predelay_feedback = $"the void".modulate.a
	pass



func _on_the_void_die_faster():
	
	get_tree().change_scene_to_file("res://end.tscn")
	pass # Replace with function body.
