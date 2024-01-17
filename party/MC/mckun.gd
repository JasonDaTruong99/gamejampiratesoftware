extends CharacterBody2D

const ACCEL: int = 40
const MAX_SPEED: int = 80
const FRICTION: int = 75
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var info = $CharData
@export var charInfo: Resource
#@onready var follow = $follow

var level = baseLevel()

func baseLevel():
	level = charInfo.passCharLevel(1)
	print(level)
	return level
	
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
