extends Node
@onready var points_label: Label = %Points_Label
@export var hearts : Array [Node]

var points = 0
var lives = 3

func add_point():
	points += 1
	points_label.text = "Points: " + str(points)
	print(points)
	
func decrease_health():
	lives -=1
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	print(lives)
	if (lives == 0):
		get_tree().reload_current_scene()
