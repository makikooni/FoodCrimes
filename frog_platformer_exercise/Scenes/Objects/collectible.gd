extends Area2D


@onready var game_logic: Node = %GameLogic

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "MainCharacter"):
		queue_free()
		game_logic.add_point()
