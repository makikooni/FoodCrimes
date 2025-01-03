extends Node

class_name Inventory

var clues_inventory : Array = []

# Method to add a clue to the inventory
func add_clue(clue: Clue) -> void:
	clues_inventory.append(clue)
	print("Clue added: %s" % clue.name)

# Method to remove a clue from the inventory
func remove_clue(clue_name: String) -> void:
	for clue in clues_inventory:
		if clue.name == clue_name:
			clues_inventory.erase(clue)
			print("Clue removed: %s" % clue_name)
			return
	print("Clue not found: %s" % clue_name)
