extends Sprite2D
signal die_faster
var time
# Called when the node enters the scene tree for the first time.
func _ready():
	time = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	modulate.a = 5 * time / 255
	#print(modulate.a)
	if modulate.a > 1:
		die_faster.emit()
	pass
