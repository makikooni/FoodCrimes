extends Node
@onready var points_label: Label = %Points_Label

var points = 0

func add_point():
	points += 1
	points_label.text = "Points: " + str(points)
	print(points)
