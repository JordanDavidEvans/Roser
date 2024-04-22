extends Node2D
signal reject
signal hp_left
signal death
var hp

# Called when the node enters the scene tree for the first time.
func _ready():
	hp = 50
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass




func _on_rigid_body_2d_is_inside():
	if hp >= 0:
		hp -= 1
		hp_left.emit(hp)
	else:
		death.emit()
		queue_free()
	pass # Replace with function body.
