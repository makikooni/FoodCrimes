extends Node
@onready var texture_rect: TextureRect = %TextureRect
@onready var basic_window: TextureRect = %basicWindow
@onready var files_001_button: Button = $basicWindow/TextureRect/Files001button

@onready var button: Button = $pass_window/LineEdit/Button

@onready var pass_window: TextureRect = $pass_window
@onready var line_edit: LineEdit = %LineEdit
var save_password = false
@onready var folder_1_icons: TextureRect = %Folder_1_icons

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_basic_window_button_pressed() -> void:
	print("Files closed")
	basic_window.visible = false
	pass_window.visible = false
	folder_1_icons.visible = false
	files_001_button.visible = true
	texture_rect.visible = true


func _on_files_001_button_pressed() -> void:
	print("Files001 clicked")
	if save_password == false:
		pass_window.visible = true
	else:
		texture_rect.visible = false
		folder_1_icons.visible = true
		
	
func _on_button_pressed() -> void:
	if line_edit.text == "030291":
		print("correct")
		save_password = true
		print("password saved")
		pass_window.visible = false
		texture_rect.visible = false
		folder_1_icons.visible = true
