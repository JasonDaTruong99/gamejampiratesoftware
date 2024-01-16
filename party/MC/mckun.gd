extends CharacterBody2D

const ACCEL: int = 40
const MAX_SPEED: int = 80
const FRICTION: int = 75
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var info = $CharData
#@onready var follow = $follow

func print():
	info.printStats()

func _physics_process(delta):
	var inputVector = Vector2.ZERO
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	inputVector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	inputVector = inputVector.normalized()
	
	if inputVector != Vector2.ZERO:
		velocity = velocity.move_toward(inputVector * MAX_SPEED, ACCEL * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO,FRICTION * delta)
	if velocity.x < 0:
		#animated_sprite_2d.flip_h
		animated_sprite_2d.play('walkLeft')
	elif velocity.x > 0:
		animated_sprite_2d.play('walkRight')
	elif velocity.y > 0:
		animated_sprite_2d.play('walkDown')
	elif velocity.y < 0:
		animated_sprite_2d.play('walkUp')
	else:
		animated_sprite_2d.stop()
		
	move_and_collide(velocity)

#func _process(delta):
	#follow.position = position
