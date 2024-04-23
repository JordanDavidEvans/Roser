extends Sprite2D
var expandbox = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if expandbox == true:
		scale.x += delta
		scale.y += delta
		rotation += delta
	pass



func _on_level_2_expandbox():
	expandbox = true
	pass # Replace with function body.
