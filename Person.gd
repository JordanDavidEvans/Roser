extends Node2D
signal reject
signal hp_left
signal death
var hp
var multi = 1.1
var force

# Called when the node enters the scene tree for the first time.
func _ready():
	hp = 50
	pass # Replace with function body.

func increase_speed(amount):
	force =  amount ** multi
	print("increase speed: " + str(force))
	$RigidBody2D.STARTING_FORCE = force
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_rigid_body_2d_is_inside():
	if hp >= 0:
		hp -= 1
		hp_left.emit(hp)
	else:
		hp = 50
		death.emit()
		queue_free()
	pass # Replace with function body.
	

func get_hp():
	return str(hp)
