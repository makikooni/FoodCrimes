extends Control
@onready var inventory_container : VBoxContainer = $VBoxContainer  # Reference to VBoxContainer where buttons will go
var inventory : Inventory
@onready var hint_1: Label = %Hint1
@onready var button: Button = $Button
@onready var inv: TextureRect = %Inv


func _ready():
	# Initialize the inventory
	inventory = Inventory.new()
	
	# Example: Adding some clues to the inventory
	inventory.add_clue(Clue.new("Poison Bottle", "A bottle with a strange liquid inside."))
	inventory.add_clue(Clue.new("Mysterious Note", "A note with cryptic handwriting."))
	
	# Update the inventory UI
	update_inventory_ui()
	
	
# Update the UI with the list of clues
func update_inventory_ui() -> void:
	# Clear the current UI elements
	for child in inventory_container.get_children():
		child.queue_free()

	# Add each clue as a button in the VBoxContainer
	for clue in inventory.clues_inventory:
		var clue_button = Button.new()
		clue_button.text = clue.name
		# Use Callable to bind the clue to the signal function
		clue_button.connect("pressed", Callable(self, "_on_clue_button_pressed").bind(clue))
		inventory_container.add_child(clue_button)

# Handle button press to display clue description
func _on_clue_button_pressed(clue: Clue) -> void:
	print("Clue description: %s" % clue.cdescription)
	if hint_1.visible == true:
		hint_1.hide_hint()
	hint_1.show_hint(clue.cdescription)
	await get_tree().create_timer(5).timeout
	hint_1.hide_hint()


func _on_button_pressed() -> void:
	if hint_1.visible == true:
		hint_1.hide_hint()
	inv.visible = false 
