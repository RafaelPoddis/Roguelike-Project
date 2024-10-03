extends Control

var optionsScreen = load("res://Scenes/options.tscn").get_instance_id()

func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_options_pressed() -> void:
	get_tree().current_scene.add_child(optionsScreen)
