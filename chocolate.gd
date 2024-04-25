extends Node2D
signal eat_me

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _enter_tree():
	var ranvalue = randf() * 2
	$physical/choc.scale.x = ranvalue
	$physical/asdsadsad.scale.x = ranvalue
	$physical/choc.scale.y = ranvalue
	$physical/asdsadsad.scale.y = ranvalue
	





func _on_asdsadsad_body_entered(body):
	eat_me.emit()
	print("test")
	pass # Replace with function body.
