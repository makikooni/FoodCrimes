extends Node

class_name Clue
var cname: String
var cdescription: String

# Constructor to initialize a new Clue
func _init(cname: String, cdescription: String) -> void:
	self.cname = cname
	self.cdescription = cdescription
