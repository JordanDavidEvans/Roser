extends Sprite2D


# Called when the node enters the scene tree for the first time.
var dragging = false
var drag_offset = Vector2()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Check if the click is inside the sprite's rectangle
				if global_position.distance_to(event.position) <= scale.x / 2:
					dragging = true
					drag_offset = global_position - event.position
			else:
				dragging = false

	if event is InputEventMouseMotion:
		if dragging:
			global_position = event.position + drag_offset
