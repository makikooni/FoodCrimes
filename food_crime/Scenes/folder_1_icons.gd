extends TextureRect

@onready var image_icon_3: Button = $image_icon_3/image_icon_3
@onready var node_2d: Node2D = $Node2D




func _on_image_icon_3_pressed() -> void:
	print("image_icon_3_pressed")
	#var parent = image_icon_3.get_parent()
	#parent.visible = false
	node_2d.visible = false
