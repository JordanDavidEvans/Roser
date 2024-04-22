extends Control
signal rejected
var hp
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_level_take_damage():

	
	pass # Replace with function body.


func _on_person_hp_left(currenthealth):
	$MarginContainer/VBoxContainer/hpvalue.text = str(currenthealth)
	pass # Replace with function body.
