extends CharacterBody2D

var speed = 70.0
var motion = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		$AnimatedSprite2D.play("walk_right")
		motion.x = speed
		motion.y = 0
	elif Input.is_action_pressed("move_left"):
		$AnimatedSprite2D.play("walk_left")
		motion.x = -speed
		motion.y = 0
	elif Input.is_action_pressed("move_down"):
		$AnimatedSprite2D.play("walk_down")
		motion.y = speed
		motion.x = 0
	elif Input.is_action_pressed("move_up"):
		$AnimatedSprite2D.play("walk_up")
		motion.y = -speed
		motion.x = 0
	else:
		$AnimatedSprite2D.play("idle_down")
		motion.y = 0
		motion.x = 0
	velocity = motion
	move_and_slide()
