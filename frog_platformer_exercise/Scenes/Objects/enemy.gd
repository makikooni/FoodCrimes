extends RigidBody2D
@onready var game_logic: Node = %GameLogic

func _on_area_2d_body_entered(body):
	if (body.name == "MainCharacter"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		print(y_delta)
		if (y_delta >55):
			print("Destroy enemy")
			queue_free()
			body.jump()
		else:
			print("Health down")
			game_logic.decrease_health()
			if (x_delta > 0):
				body.jump_side(500)
			else:
				body.jump_side(-500)
	
