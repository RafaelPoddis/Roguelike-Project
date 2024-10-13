extends Control


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_options_pressed() -> void:
	var optionsScreen = load("res://Scenes/options.tscn").instantiate()
	get_tree().current_scene.add_child(optionsScreen)


func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
