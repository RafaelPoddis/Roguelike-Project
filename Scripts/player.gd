extends CharacterBody2D


var SPEED = 150.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("left", "right", "up", "down")
	
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		# velocity = direction * 0
	
	move_and_slide()

func getAnim():
	pass
