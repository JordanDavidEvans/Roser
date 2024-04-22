extends Sprite2D

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	scale.x = (sin(time)**2 + 1 ) / 2
	scale.y = (cos(time)**2 + 1 ) / 2
	pass
