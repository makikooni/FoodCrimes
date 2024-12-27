extends Node
@onready var files_button: Button = %FilesButton
@onready var notepad_button: Button = %NotepadButton
@onready var email_button: Button = %EmailButton
@onready var media_button: Button = %MediaButton
@onready var database_button: Button = $Database/DatabaseButton
@onready var audio_button: Button = %AudioButton
@onready var emaillayout: TextureRect = %emaillayout
@onready var emailexitbutton: Button = $emaillayout/emailexitbutton
@onready var email_text: Label = $emaillayout/emailText
@onready var email_adress: Label = $emaillayout/emailAdress


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_files_button_pressed() -> void:
	print("Files clicked")

func _on_notepad_button_pressed() -> void:
	print("Notepad clicked")
	
func _on_email_button_pressed() -> void:
	print("Email clicked")
	emaillayout.visible = true #makes all children visible too
	#if first time then show first email
	
	

func _on_media_button_pressed() -> void:
	print("Media clicked")

func _on_database_button_pressed() -> void:
	print("Database clicked")

func _on_audio_button_pressed() -> void:
	print("Audio clicked")



func _on_emailexitbutton_pressed() -> void:
	emaillayout.visible = false
