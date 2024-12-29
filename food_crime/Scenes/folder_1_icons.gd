extends TextureRect

@onready var image_icon_3: Button = $image_icon_3/image_icon_3
@onready var node_2d: Node2D = $Node2D
@onready var error_image: TextureRect = %error_image
@onready var picture_window: TextureRect = %picture_window
@onready var picture_exit_button: Button = $picture_window/picture_exit_button




func _on_image_icon_3_pressed() -> void:
	print("image_icon_3_pressed")
	#var parent = image_icon_3.get_parent()
	#parent.visible = false
	#node_2d.visible = false
	error_image.visible = true
	#TO DO: add text to the image 
	

func _on_cancel_button_pressed() -> void:
	error_image.visible = false
	node_2d.visible = true
	


func _on_ok_button_pressed() -> void:
	error_image.visible = false
	picture_window.visible = true
	#TO DO: add window and picture texture, add code for picture game



func _on_picture_exit_button_pressed() -> void:
	picture_window.visible = false
	
