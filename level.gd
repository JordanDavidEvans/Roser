extends Node
var rocket_spawn_range_min = 100
var rocket_spawn_range_max = 300
var holding_flower = false
var flower_inside = false
var person = preload("res://person.tscn")
var player_node = null
@onready var viewport_size = get_viewport().size
var heartbreaks_total
signal take_damage
# Called when the node enters the scene tree for the first time.
func _ready():
	heartbreaks_total = 1
	spawn_player()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player_node:
		$UI.hp = player_node.get_hp()
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
	




func _on_player_death():
	print("Death")
	spawn_player()
	pass



func spawn_player():
	if player_node:
		player_node.queue_free()
	player_node = person.instantiate()
	player_node.position = viewport_size/2
	player_node.death.connect(_on_player_death)

	add_child( player_node )
	heartbreaks_total = 1 + heartbreaks_total
	player_node.increase_speed(heartbreaks_total)
	
	$rejectsound.play()
	
	pass # Replace with function body.


func _on_person_death():
	_on_player_death()
	pass # Replace with function body.
