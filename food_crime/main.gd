extends Node
@onready var button: Button = %Button
@onready var label: Label = %Label
@onready var timer: Timer = %Timer


var button_on = false

func show_hint(hint,button):
	if button_on == false:
		print("show hint")
		label.visible = true
	
func _on_button_pressed() -> void:
	#get_tree().change_scene_to_file("scene_path")
	button_on = true
	print("button pressed")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.wait_time = 5.0
	timer.start()
	label.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#must be added as a signal:
func _on_timer_timeout() -> void:
	show_hint(label,button_on)# Replace with function body.
