extends Line2D

var start
# Called when the node enters the scene tree for the first time.
func _ready():
	start = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	start += 1 * delta
	set_point_position(1, Vector2(50.0, start))
	pass

