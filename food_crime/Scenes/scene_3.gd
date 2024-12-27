#TO-DO: smoother scene transition needed, keeping camera zoom instead of implementing it again 

extends Node
@onready var camera_2d: Camera2D = %Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	camera_2d.zoom = Vector2(2.3, 2.3)  # Adjust zoom level here
	camera_2d.offset = Vector2(camera_2d.offset.x, camera_2d.offset.y - 80)  # Move the camera higher

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
