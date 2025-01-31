extends Node
@onready var database_texture: TextureRect = %database_texture
@onready var exit_button: Button = %exit_button
@onready var profile_n: Button = %profile_n
@onready var profile_l: Button = %profile_l
@onready var profile_g: Button = %profile_g
@onready var profile_d: Button = %profile_d
@onready var medical: Button = %medical
@onready var newspaper: Button = %newspaper
@onready var staff_records: Button = %staff_records
@onready var profile_open: TextureRect = %profile_open
@onready var password_edit: LineEdit = $database_texture/database_main/password_edit
@onready var submit_password: Button = $database_texture/database_main/submit_password
@onready var database_main: TextureRect = $database_texture/database_main
@onready var database_open: TextureRect = $database_texture/database_open

func _on_exit_button_pressed() -> void:
	profile_open.visible = false
	database_open.visible = false
	database_main.visible = true
	database_texture.visible = false 
	
func _on_submit_password_pressed() -> void:
	if password_edit.text == "AX3091":
		database_main.visible = false
		database_open.visible = true 


func _on_profile_n_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/nurse_profile.png")
func _on_profile_l_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/lady_profile.png")
func _on_profile_g_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/grandpa_profile.png")
func _on_profile_d_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/daughter_profile.png")
func _on_medical_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/medical_files.png")
	InventoryManager.add_clue(Clue.new("Medical files", "Mr. Jensen’s medical history appears largely unremarkable, with the primary concern being mobility issues that led to his admission. However, a closer examination reveals some details worth noting."))
	print("Clue added to inventory")
func _on_newspaper_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/newspaper_clipping.png")
	InventoryManager.add_clue(Clue.new("Old newspaper", "A dark past in the daycare’s history. Could someone be repeating old patterns?"))
	print("Clue added to inventory")
func _on_staff_records_pressed() -> void:
	profile_open.visible = true
	profile_open.texture = load("res://Assets/Desktop/Database/medi_files.png")
	InventoryManager.add_clue(Clue.new("Staff Records", "A detailed record of the staff and residents at Mr. Jensen's home paints a picture of a small, tight-knit community. The list shows a relatively low turnover rate, with long-term staff, including a nurse who has been with Mr. Jensen for years"))
	print("Clue added to inventory")
