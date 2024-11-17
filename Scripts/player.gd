extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var SPEED = 150.0

func _ready() -> void:
	anim.play("idle")
	

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("left", "right", "up", "down")
	
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
	getAnim(direction)


func getAnim(direction: Vector2)->void:
	if direction == Vector2.ZERO:
		anim.play("idle")
	else:
		if direction.x > 0:
			anim.play("right")
			anim.flip_h = false
		elif direction.x < 0:
			anim.play("left")
			anim.flip_h = true
		elif direction.y > 0:
			anim.play("down")
		elif direction.y < 0:
			anim.play("up")
	
