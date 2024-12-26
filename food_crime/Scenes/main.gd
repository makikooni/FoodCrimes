extends Node
@onready var button: Button = %Button
@onready var timer: Timer = %Timer
@onready var hint_1: Label = %Hint1
@onready var camera_2d: Camera2D = %Camera2D
@onready var label: Label = $Label


var button_on = false
#var zoom = Vector2(1, 1) 
var target_zoom = Vector2(2.3, 2.3)  # Target zoom level
var target_offset = Vector2(0, -80)  # Target offset position (relative to current offset)


func hint_timer():
	if button_on == false:
		hint_1.show_hint("How do I \nswitch it\non...") #ref to the specific node not scene?
	
func _on_button_pressed() -> void:
	
	button_on = true
	print("button pressed")
	hint_1.visible = false
	#camera_2d.zoom = Vector2(2.2, 2.2) #Zoom in on the screen
	#camera_2d.offset = Vector2(camera_2d.offset.x, camera_2d.offset.y - 100)  # Move the camera higher
	

	# Create a tween for zoom and ofset - allowing smoother animation
	var tween = create_tween()
	tween.tween_property(camera_2d, "zoom", target_zoom, 1.0)
	var new_offset = camera_2d.offset + target_offset
	tween.tween_property(camera_2d, "offset", new_offset, 1.0)
	
	
	
	tween.finished.connect(Callable(self, "_on_tween_completed"))

# This method will be called when the tween is complete
func _on_tween_completed():
	print("Camera animation completed, changing scene.")
	# Change the scene after the animation completes
	get_tree().change_scene_to_file("res://Scenes/scene2.tscn")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.wait_time = 5.0
	timer.start()
	hint_1.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#must be added as a signal:
func _on_timer_timeout() -> void:
	hint_timer()# Replace with function body.
