extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	queue_free()


func _on_controls_pressed() -> void:
	var controlsScene = load("res://Scenes/controls_scene.tscn").instantiate()
	get_tree().current_scene.add_child(controlsScene)


func _on_audio_settings_pressed() -> void:
	var audioScene = load("res://Scenes/audio_settings.tscn").instantiate()
	get_tree().current_scene.add_child(audioScene)
