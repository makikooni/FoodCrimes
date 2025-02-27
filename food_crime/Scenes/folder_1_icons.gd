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
@onready var audio_icon_1: Button = %audio_icon_1
@onready var database_icon_1: Button = %database_icon_1
signal clue_added
@onready var image_2_buttons: TextureRect = %Image2Buttons
@onready var image_3_buttons: TextureRect = %Image3Buttons
@onready var image_1_buttons: TextureRect = %Image1Buttons
@onready var hint_1: Label = %Hint1
@onready var audio_icon_2: Button = %audio_icon_2
@onready var giftbox_button: Button = %giftbox_button
@onready var syringe_button: Button = %syringe_button
@onready var family_picture_button: Button = %family_picture_button
@onready var knife_button: Button = %knife_button
@onready var book_button: Button = %book_button
@onready var couch_button: Button = %couch_button
@onready var tea_leaves_button: Button = %tea_leaves_button
@onready var teashelf_button: Button = %teashelf_button
@onready var teacup_button: Button = %teacup_button
@onready var chicken_button: Button = %chicken_button
@onready var towel_button: Button = %towel_button
@onready var music_player_node: Node = $music_player_node
@onready var database_node: Node = $database_node


	
#IMAGES
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




#AUDIO
func _on_audio_icon_1_pressed() -> void:
	print("audio_icon_1_pressed")
	if music_player_node.music_player.visible == false:
		music_player_node.music_player.visible = true
		music_player_node.change_audio_names("Interview with Daughter","00:01:30")
		music_player_node.play_audios("daughter")
		InventoryManager.add_clue(Clue.new("Daughter", "Her words carry sadness, but is it genuine? What is she trying to hide? There’s something more beneath the surface, something she’s not telling me."))
		print("Clue added to inventory")
		
func _on_audio_icon_2_pressed() -> void:
	if music_player_node.music_player.visible == false:
		music_player_node.music_player.visible = true
		music_player_node.change_audio_names("Interview with Nurse","00:01:02")
		print("audio_icon_2_pressed")
		music_player_node.play_audios("nurse")
		InventoryManager.add_clue(Clue.new("Nurse", "Calm and composed, but her role demands scrutiny."))
		print("Clue added to inventory")

#TO DO CUT DOWN CHICKEN TEXT AND TEA BOOK
#Inside image:
func _on_giftbox_button_pressed() -> void:
	#TOO LONG DO STH ABOUT IT
	giftbox_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("A kind gesture or a subtle connection attempt? The note and gift hint at their relationship. Time to ask the neighbor about their dynamics.")
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Giftbox", "A kind gesture or a subtle connection attempt? The note and gift hint at their relationship. Time to ask the neighbor about their dynamics."))
	print("Clue added to inventory")
func _on_syringe_button_pressed() -> void:
	syringe_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("A medical syringe—part of his treatment, or something more sinister? Could the nurse be involved?")
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Syringe", "A medical syringe—part of his treatment, or something more sinister? Could the nurse be involved?"))
	print("Clue added to inventory")
func _on_family_picture_button_pressed() -> void:
	family_picture_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("A memory captured two years ago. The man beside her… who was he?")
	await get_tree().create_timer(3).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Photograph", "A memory captured two years ago. The man beside her… who was he?"))
	print("Clue added to inventory")
func _on_knife_button_pressed() -> void:
	knife_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("A knife out in the open, taken out to clean… Or taken out for another reason?")
	await get_tree().create_timer(3).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Knife", "A knife out in the open, taken out to clean… Or taken out for another reason?"))
	print("Clue added to inventory")
func _on_book_button_pressed() -> void:
	book_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("A book on plants and teas—personal interest, family business, or part of his daily routine?")
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Book", "A book on plants and teas—personal interest, family business, or part of his daily routine?"))
	print("Clue added to inventory")
func _on_couch_button_pressed() -> void:
	couch_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("The spot where it all ended. But how did it happen?")
	await get_tree().create_timer(4).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Place of death", "The spot where it all ended. But how did it happen?"))
	print("Clue added to inventory")
func _on_tea_leaves_button_pressed() -> void:
	hint_1.show_hint("Tea leaves...")
	tea_leaves_button.modulate = Color(1, 1, 1, 1)	
	await get_tree().create_timer(3).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Leaf Tea", "Recently drained tea leaves."))
	print("Clue added to inventory")
func _on_teashelf_button_pressed() -> void:
	teashelf_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("An impressive collection, including some exotic and rare varieties.")
	await get_tree().create_timer(4).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Tea collection", "An impressive collection, including some exotic and rare varieties."))
	print("Clue added to inventory")
func _on_teacup_button_pressed() -> void:
	teacup_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("The tea is still warm… Did he drink it shortly before his death?")
	await get_tree().create_timer(4).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Half-drunk tea", "The tea is still warm… Did he drink it shortly before his death?"))
	print("Clue added to inventory")
func _on_chicken_button_pressed() -> void:
	chicken_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("He was cooking an ordinary task on an ordinary day. Was he expecting company, making a meal for himself, or simply following his routine?")
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()
	InventoryManager.add_clue(Clue.new("Oven", "He was cooking an ordinary task on an ordinary day. Was he expecting company, making a meal for himself, or simply following his routine?"))
	print("Clue added to inventory")
func _on_towel_button_pressed() -> void:
	towel_button.modulate = Color(1, 1, 1, 1)	
	hint_1.show_hint("Is that a raw chicken??? Oh no, wait. It's just a towel.")
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()

#DATABSE
func _on_database_icon_1_pressed() -> void:
	database_node.database_texture.visible = true
