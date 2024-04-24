extends Node
var chocolate = preload("res://chocolate.tscn")
var choco = null

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_chocolate()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	


func _on_chocolate_eat_me():
	$chomp.play()
	spawn_chocolate()
	pass # Replace with function body.
	
func spawn_chocolate():
	if choco:
		choco.queue_free()
	choco = chocolate.instantiate()
	choco.eat_me.connect(_on_chocolate_eat_me)
	choco.global_position.x = randf_range(0, 500)
	choco.global_position.y = randf_range(0, 500)
	add_child( choco )
	

