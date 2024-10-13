extends CanvasLayer

@onready var level = $"../"
@onready var pausemenu = $PauseMenu

func _on_resume_pressed() -> void:
	level.pauseGame()


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")


func _on_options_pressed() -> void:
	var options = load("res://Scenes/options.tscn").instantiate()
	get_tree().current_scene.add_child(options)
	pausemenu.hide()
