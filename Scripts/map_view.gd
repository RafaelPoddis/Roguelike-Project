extends SubViewport

@onready var camera = $Camera2D
@onready var player = $"../../../CharacterBody2D"
@onready var mapCanvas = $".."

var mapOpen = false

func _ready() -> void:
	mapCanvas.hide()

func _physics_process(_delta: float) -> void:
	camera.position = player.position
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("openmap"):
		if(mapOpen):
			mapCanvas.hide()
			mapOpen = false
		else:
			mapCanvas.show()
			mapOpen = true
