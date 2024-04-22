extends Control

var heart = preload("res://heart.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addheart():
	var newHeart = TextureRect.new()
	newHeart.texture = $MarginContainer/HBoxContainer/heart.texture
	add_child(newHeart)
	var h = heart.instantiate()
	add_child(h)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
