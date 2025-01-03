extends Node
class_name Inventory
const InventoryUi = preload("res://Scenes/inventory_ui.gd")

var clues_inventory : Array = []

# Method to add a clue to the inventory
func add_clue(clue: Clue) -> void:
	clues_inventory.append(clue)
	print("Clue added: %s" % clue.name)
	#InventoryUi.update_inventory_ui()
	#TO DO - MAKE SURE THAT U CANNOT ADD CLUE TWICE 
	
# Method to remove a clue from the inventory
func remove_clue(clue_name: String) -> void:
	for clue in clues_inventory:
		if clue.name == clue_name:
			clues_inventory.erase(clue)
			print("Clue removed: %s" % clue_name)
			return
	print("Clue not found: %s" % clue_name)
