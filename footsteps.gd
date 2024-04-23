extends CPUParticles2D

# Given a velocity vector

# Get the linear velocity of the rigid body
# Get the angle of the velocity vector
var angle = linear_velocity.angle()
# Convert to degrees (if needed)
var angle_degrees = deg_to_rad(angle)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	angle_degrees = angle_min
	angle_degrees = angle_max
	pass
