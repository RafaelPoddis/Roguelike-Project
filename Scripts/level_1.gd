extends Node2D

@onready var pausemenu = $PauseMenu
var paused = false

func _ready() -> void:
	pausemenu.hide()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		pauseGame()

func pauseGame():
	if paused:
		pausemenu.hide()
		Engine.time_scale = 1
	else:
		pausemenu.show()
		Engine.time_scale = 0
	
	paused = !paused
