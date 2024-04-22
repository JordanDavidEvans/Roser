extends Node

var holding_flower = false
var flower_inside = false
signal take_damage
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_rose_picked_up():
	print("picked up")
	
	pass # Replace with function body.




func _on_area_2d_area_entered(area):
	print("flower insdie")
	flower_inside = true
	
	pass # Replace with function body.




func _on_rose_dropped():
	if flower_inside == true:
		print("damage")
		take_damage.emit()
	pass # Replace with function body.


func _on_area_2d_area_exited(area):
	print("flower outside")
	flower_inside = false
	pass # Replace with function body.
	
func _on_control_rejected():
	$rejectsound.play()
	pass # Replace with function body.
