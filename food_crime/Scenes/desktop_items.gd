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
@onready var hint_1: Label = %Hint1
@onready var email_1: TextureRect = $Email/emaillayout/Email1
@onready var email_1_button: Button = %Email1Button
@onready var email: TextureRect = $Email/Email
@onready var open_calendar: TextureRect = %OpenCalendar
@onready var close_calendar_button: Button = $Calendar/OpenCalendar/CloseCalendarButton

var hint1_available = true

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
	email_1.visible = true
	emaillayout.visible = true #makes all children visible too
	

func _on_media_button_pressed() -> void:
	print("Media clicked")

func _on_database_button_pressed() -> void:
	print("Database clicked")

func _on_audio_button_pressed() -> void:
	print("Audio clicked")
	
#Email funtions:
func _on_emailexitbutton_pressed() -> void:
	print("Email clicked")
	emaillayout.visible = false
	email_adress.visible = false
	email_text.visible = false
	if hint1_available == true:
		await get_tree().create_timer(2).timeout
		hint_1.show_hint("Date...")
		# Wait for 3 seconds
		await get_tree().create_timer(3).timeout
		hint1_available = false
		hint_1.hide_hint()
func _on_email_1_button_pressed() -> void:
	#if first time then show first email
	email_1.visible = false
	email_1.texture = preload("res://Assets/Emails/email_none.png")
	print("Email1 tecxture changed to closed")  # Change texture to closed email.
	email_adress.visible = true
	email_text.visible = true
	email_text.text = "I hope by now you have familiarised yourself with  your new gadget. It is time to move on and start  working on your first case.  We don’t have any time to loose. You will find all necessary files on your desktop. Key is today's date."
	email_adress.text = "From: B.O.\nDate: 1st March 1995\nSubject: Welcome"
	new_email_texture()
	#TO-DO: when clicked must disable all other buttons on desktop
func new_email_texture():
	#TO-DO: check for all emails inside inbox instead
	email_1.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT
	#TO-DO: not perfect solution, the initial texture is not tall enough
	if email_1.texture == preload("res://Assets/Emails/email_none.png"):
		print("Main email icon changed to none")
		email.texture = preload("res://Assets/Emails/email_none.png")
	else:
		email.texture = preload("res://Assets/Desktop/email.png")
		print("Main email icon changed to new email.")

#Calendar functions
func _on_calendar_button_pressed() -> void:
	print("Calendar clicked")
	open_calendar.visible = true
func _on_close_calendar_button_pressed() -> void:
	open_calendar.visible = false
