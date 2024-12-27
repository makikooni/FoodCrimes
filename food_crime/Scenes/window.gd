extends Node
@onready var texture_rect: TextureRect = %TextureRect
@onready var button: Button = %Button
@onready var basic_window: TextureRect = %basicWindow
@onready var files_001_button: Button = $basicWindow/TextureRect/Files001button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_basic_window_button_pressed() -> void:
	print("Files closed")
	basic_window.visible = false
	


func _on_files_001_button_pressed() -> void:
	print("Files001 clicked")
	pass #Ask for password
