extends Sprite2D


@onready var viewport_size = get_viewport().size
func _ready():
	position = viewport_size / 2
	print(str(viewport_size.x))
	scale.x = viewport_size.x / texture.get_size().x
	scale.y = viewport_size.y / texture.get_size().y
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass
