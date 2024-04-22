extends RigidBody2DWrap

var inside = false
const STARTING_FORCE = 50
signal is_inside

func _physics_process(delta):
	var velocity = get_linear_velocity()
	if inside == true:
		apply_impulse(Utility.RandomUnitVector2() * randf_range ( STARTING_FORCE/2.0, STARTING_FORCE*2.0))
		is_inside.emit()
#	if velocity.length() > 0:  # Check to make sure the velocity isn't zero
#		var angle = rad_to_deg(velocity.angle())  # Get the angle of the velocity vector
#		rotation = deg_to_rad(angle + 90)  # Set the node's rotation to the velocity angle
	



func _ready():
	apply_impulse(Utility.RandomUnitVector2() * randf_range ( STARTING_FORCE/2.0, STARTING_FORCE*2.0))
		



func run_away():
	apply_impulse(Utility.RandomUnitVector2() * randf_range ( STARTING_FORCE/2.0, STARTING_FORCE*2.0))

func _on_area_2d_area_entered(area):
	inside = true
	pass # Replace with function body.


func _on_area_2d_area_exited(area):
	inside = false
	pass # Replace with function body.
