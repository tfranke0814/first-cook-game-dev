extends Node2D

var current_lvl_node = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	change_lvl("res://scenes/levels/level_1.tscn")
	
func change_lvl(lvl_path: String) -> void:
	if current_lvl_node != null:
		current_lvl_node.queue_free()
	var new_lvl_instance = load(lvl_path).instantiate()
	add_child(new_lvl_instance)
	current_lvl_node = new_lvl_instance
