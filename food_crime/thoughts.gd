extends Label
@onready var hint_1: Label = %Hint1

func show_hint(text):
	hint_1.text = text
	print("show hint")
	hint_1.visible = true
	
func hide_hint():
	print("hint hidden")
	hint_1.visible = false
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
