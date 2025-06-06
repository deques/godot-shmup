extends Node2D

@onready var ship: Node2D = $Ship

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ship.tree_exited.connect(func():
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://Menues/game_over.tscn")
	)
