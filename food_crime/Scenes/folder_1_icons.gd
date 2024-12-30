extends TextureRect
@onready var image_icon_3: Button = $Node2D/image_icon_3/image_icon_3
@onready var node_2d: Node2D = $Node2D
@onready var error_image: TextureRect = %error_image
@onready var picture_window: TextureRect = %picture_window
@onready var error_message: Label = %error_message
@onready var picture_exit_button: Button = %picture_exit_button
var hint2_available = true
@onready var image_icon_1: Button = $Node2D/image_icon_1/image_icon_1
@onready var image_icon_2: Button = $Node2D/image_icon_2/image_icon_2
@onready var picture_001: TextureRect = $picture_window/picture_001
var image_icon_pressed = 0

@onready var image_2_buttons: TextureRect = %Image2Buttons
@onready var image_3_buttons: TextureRect = %Image3Buttons
@onready var image_1_buttons: TextureRect = %Image1Buttons
@onready var hint_1: Label = %Hint1


func _on_image_icon_3_pressed() -> void:
	print("image_icon_3_pressed")
	image_icon_pressed = 3
	error_image.visible = true
	error_message.text = "This file was damaged."

func _on_cancel_button_pressed() -> void:
	error_image.visible = false
	node_2d.visible = true
	
func _on_ok_button_pressed() -> void:
	error_image.visible = false
	picture_window.visible = true
	if image_icon_pressed == 1:
		picture_001.texture = load("res://Assets/Pictures/bedroom.png")
		image_1_buttons.visible = true
	elif image_icon_pressed == 2:
		picture_001.texture = load("res://Assets/Pictures/kitchen.png")
		image_2_buttons.visible = true
	elif image_icon_pressed == 3:
		picture_001.texture = load(	"res://Assets/Pictures/living.png")
		image_3_buttons.visible = true
		
	if hint2_available == true:
		await get_tree().create_timer(2).timeout
		hint_1.show_hint("We need\n to repair\n it")
		# Wait for 3 seconds
		await get_tree().create_timer(3).timeout
		hint2_available = false
		hint_1.hide_hint()


func _on_picture_exit_button_pressed() -> void:
	image_1_buttons.visible = false
	image_2_buttons.visible = false
	image_3_buttons.visible = false
	picture_window.visible = false
	
func _on_image_icon_2_pressed() -> void:
	print("image_icon_2_pressed")
	image_icon_pressed = 2
	error_image.visible = true
	error_message.text = "This file was damaged."
func _on_image_icon_1_pressed() -> void:
	print("image_icon_1_pressed")
	image_icon_pressed = 1
	error_image.visible = true
	error_message.text = "This file was damaged."

#Picture buttons function

#TO-DO: add all buttons, if button x then show hint y and leave space to add to notepad
