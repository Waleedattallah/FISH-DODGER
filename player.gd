extends CharacterBody2D

var speed = 500

func _physics_process(delta: float) -> void:
	move_and_slide()
	if Input.is_action_pressed("right"):
		velocity.x = speed
	elif Input.is_action_pressed("left"):
		velocity.x = -1 * speed
	else:
		velocity.x = 0
	if not is_on_floor():
		velocity.y += 8
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= 400
	
	pass
	
