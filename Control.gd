extends Control
signal rejected
var hp
# Called when the node enters the scene tree for the first time.
func _ready():
	hp = 50.0
	pass # Replace with function body.


func set_rejections(total):
	$rejections.text = str(total) + " rejections"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$MarginContainer/VBoxContainer/hpvalue.text = str(hp)
	$MarginContainer/Heart.scale.y = float(hp)/50.0
	$MarginContainer/Heart.scale.x = float(hp)/50.0
	pass
	

