extends KinematicBody2D

var a = 1
var b = "text"
var velocity = Vector2.ZERO
const SPEED = 350
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.play("right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("left")
	else:
		velocity.x = 0
		$AnimatedSprite.play("idle")
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -350
		$AnimatedSprite.play("left")

	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.y = velocity.y + 100
