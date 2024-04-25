extends Node

var startx
var starty
var total = 0
signal expandbox
# Called when the node enters the scene tree for the first time.
func _ready():
	startx = $rose.position.x
	starty = $rose.position.y
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_workers_returned():
	total += 1
	$workers/worker/Label.text = "$" + str(total) + " total"
	$rose.position.x = startx
	$rose.position.y = starty
	if total >= 20:
		$workers/worker/cash.visible = true
		$workers/worker/purchase.visible = true
	pass # Replace with function body.




func _on_purchase_pressed():
	$box.visible = true
	expandbox.emit()
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://level_3.tscn")
	pass # Replace with function body.
	
