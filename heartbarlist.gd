extends GridContainer


# Change this variable to set the number of hearts
var number_of_hearts := 5

func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

	
	
	
func _process(delta):
	pass




func _on_heartbar_create_new_heart():
	var heart = $heart  # Make sure this path matches your TextureRect node
	heart.visible = false  # Hide the template heart
	var new_heart = heart.duplicate()
	new_heart.visible = true
	add_child(new_heart)
	pass # Replace with function body.
