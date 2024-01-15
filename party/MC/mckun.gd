extends CharacterBody2D

@export var speed: int = 64
@onready var animated_sprite_2d = $AnimatedSprite2D
#@onready var follow = $follow

func movement():
	var modeDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = modeDirection*speed
	
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
		

func _physics_process(delta):
	movement()
	move_and_slide()

#func _process(delta):
	#follow.position = position
