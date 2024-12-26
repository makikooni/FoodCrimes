#smoother scene transition needed, keeping camera zoom instead of implementing it again 

extends Node
@onready var camera_2d: Camera2D = %Camera2D
@onready var timer: Timer = %Timer
@onready var error_message_1: TextureRect = $Node/ErrorMessage1
@onready var hint_1: Label = $Hint1
@onready var button: Button = $Button
@onready var error_messages := [
	$Node/ErrorMessage2,
	$Node/ErrorMessage3,
	$Node/ErrorMessage4,
	$Node/ErrorMessage5,
	$Node/ErrorMessage6,
	$Node/ErrorMessage7,
	$Node/ErrorMessage8
]
@onready var messages := [
	$messages/Label2,
	$messages/Label3,
	$messages/Label4,
	$messages/Label5,
	$messages/Label6,
	$messages/Label7,
	$messages/Label8
]

var press_count = 0

func run_errors():
	if press_count < error_messages.size():
		error_messages[press_count].visible = true
		messages[press_count].visible = true
	else:
		if button:
			button.disconnect("pressed", _on_button_pressed)  # Correctly disconnect signal
			button.queue_free()  # Destroy the button
			button = null  
		

func _ready() -> void:
	camera_2d.zoom = Vector2(2.3, 2.3)  # Adjust zoom level here
	camera_2d.offset = Vector2(camera_2d.offset.x, camera_2d.offset.y - 80)  # Move the camera higher
	timer.wait_time = 4.0
	timer.start()
	

func _on_button_pressed() -> void:
	if press_count < error_messages.size():
		press_count += 1
		run_errors()

func _on_timer_timeout() -> void:
	error_message_1.visible = true
	
	
