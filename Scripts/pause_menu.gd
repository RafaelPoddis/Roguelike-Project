extends CanvasLayer

var isPaused = false

func _ready() -> void:
	visible = false


#func _unhandled_input(event: InputEvent) -> void:
	#if event.is_action_pressed("ui_cancel"):
		#if isPaused:
			#resume()
		#else:
			#pause()
			
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if isPaused:
			resume()
		else:
			pause()

func resume():
	Engine.time_scale = 1
	visible = false
	isPaused = false

func pause():
	Engine.time_scale = 0
	visible = true
	isPaused = true


func _on_resume_pressed() -> void:
	resume()


func _on_quit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/start_screen.tscn")


func _on_options_pressed() -> void:
	visible = false
	var options = load("res://Scenes/options.tscn").instantiate()
	get_tree().current_scene.add_child(options)
