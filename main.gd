extends Node

var window_id = DisplayServer.get_window_id()
var window_size = DisplayServer.window_get_size(window_id)

func _physics_process(delta):
	
	print("Current window size: ", window_size)
	pass

