extends Node
@onready var window: Node = $Window


@onready var buttons = {
	"files": %FilesButton,
	"notepad": %NotepadButton,
	"calendar": %CalendarButton
}

@onready var email_nodes = {
	"emaillayout": %emaillayout,
	"exit_button": %emailexitbutton2,
	"address": %emailAdress,
	"text": %emailText,
	"email_1": $Email/emaillayout/Email1,
	"email_1_button": %Email1Button,
	"main_email": $Email/Email
}

@onready var cal_nodes = {
	"open_calendar": %OpenCalendar,
	"exit_button": $Calendar/OpenCalendar/CloseCalendarButton,
}

@onready var hint_1: Label = %Hint1
var hint1_available = true
@onready var inv: TextureRect = %Inv

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#Files functions:
func _on_files_button_pressed() -> void:
	print("Files clicked")
	window.basic_window.visible = true


#Email funtions:
func _on_email_button_pressed() -> void:
	print("Email clicked")
	email_nodes.email_1.visible = true
	email_nodes.emaillayout.visible = true #makes all children visible too
func _on_emailexitbutton_pressed() -> void:
	print("Email clicked")
	email_nodes.address.text = "From:\nDate:\nSubject:"
	email_nodes.text.visible = false
	email_nodes.emaillayout.visible = false
	if hint1_available == true:
		hint_1.show_hint("Date...")
		# Wait for 3 seconds
		await get_tree().create_timer(3).timeout
		hint1_available = false
		hint_1.hide_hint()
func _on_email_1_button_pressed() -> void:
	#if first time then show first email
	email_nodes.email_1.visible = false
	email_nodes.email_1.texture = preload("res://Assets/Emails/email_none.png")
	print("Email1 tecxture changed to closed")  # Change texture to closed email.
	email_nodes.address.visible = true
	email_nodes.text.visible = true
	email_nodes.text.text = "I hope by now you have familiarised yourself with  your new gadget. It is time to move on and start  working on your first case.  We don’t have any time to loose. You will find all necessary files on your desktop. Key is today's date."
	email_nodes.address.text = "From: B.O.\nDate: 1st March 1995\nSubject: Welcome"
	new_email_texture()

func new_email_texture():
	#TO-DO: check for all emails inside inbox instead
	email_nodes.email_1.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT
	#TO-DO: not perfect solution, the initial texture is not tall enough
	if email_nodes.email_1.texture == preload("res://Assets/Emails/email_none.png"):
		print("Main email icon changed to none")
		email_nodes.main_email.texture = preload("res://Assets/Emails/email_none.png")
	else:
		email_nodes.main_email.texture = preload("res://Assets/Desktop/email.png")
		print("Main email icon changed to new email.")

#Calendar functions
func _on_calendar_button_pressed() -> void:
	print("Calendar clicked")
	cal_nodes.open_calendar.visible = true
func _on_close_calendar_button_pressed() -> void:
	cal_nodes.open_calendar.visible = false

func _on_notepad_button_pressed() -> void:
	print("Notepad clicked")	
	inv.visible = true
