extends Node2D
var mouse_offset
var selected = false
signal fatty
# Called when the node enters the scene tree for the first time.
func _ready():
	$face/mouth.play()
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	if $face.global_position.x > get_viewport().get_mouse_position().x:
		$face.linear_velocity.x -= 2
	if $face.global_position.x < get_viewport().get_mouse_position().x:
		$face.linear_velocity.x += 2
			
	if $face.global_position.y > get_viewport().get_mouse_position().y:
		$face.linear_velocity.y -= 2
	if $face.global_position.y < get_viewport().get_mouse_position().y:
		$face.linear_velocity.y += 2


		
func get_bigger():
	$face/mouth.scale.x += 0.1
	$face/mouth.scale.y += 0.1
	$face/CollisionShape2D.scale.x += 0.1
	$face/CollisionShape2D.scale.y += 0.1
	if $face/mouth.scale.x > 5:
		fatty.emit()






func _on_face_body_entered(body):
	print("test")
	pass # Replace with function body.
