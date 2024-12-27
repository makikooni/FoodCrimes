extends Node
@onready var files_button: Button = %FilesButton
@onready var notepad_button: Button = %NotepadButton
@onready var email_button: Button = %EmailButton
@onready var media_button: Button = %MediaButton
@onready var database_button: Button = $Database/DatabaseButton
@onready var calendar_button: Button = %CalendarButton
@onready var emaillayout: TextureRect = %emaillayout
@onready var emailexitbutton_2: Button = %emailexitbutton2
@onready var email_adress: Label = %emailAdress
@onready var email_text: Label = %emailText


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
	email_text.text = "kurwa"
	email_text.text = "I hope by now you have familiarised yourself with  your new gadget. It is time to move on and start  working on your first case.  We don’t have any time to loose. You will find all necessary files on your desktop. Key is today's date."
	email_adress.text = "From: B.O.\nDate: 1st March 1995\nSubject: Welcome"
	#TO-DO: when clicked must disable all other buttons on desktop

func _on_media_button_pressed() -> void:
	print("Media clicked")

func _on_database_button_pressed() -> void:
	print("Database clicked")

func _on_audio_button_pressed() -> void:
	print("Audio clicked")



func _on_emailexitbutton_pressed() -> void:
	print("Email clicked")
	emaillayout.visible = false
	#automatically work for second one as they were copied



func _on_calendar_button_pressed() -> void:
	print("Calendar clicked")
