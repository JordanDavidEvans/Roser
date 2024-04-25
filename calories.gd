extends Label

var buffer = 0
var actual = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if actual < buffer:
		actual += ( 1 + ( actual / buffer ) )
	text = str(actual) + " calories"
	if actual > 1000:
		get_tree().change_scene_to_file("res://level_4.tscn")
	pass
