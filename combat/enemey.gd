extends CharacterBody2D
var stats = preload("res://party/MC/mckun.tres")

const ACCEL: int = 40
const MAX_SPEED: int = 80
const FRICTION: int = 75

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var info = $CharData
#this var was for when I was trying to fig out camera will need to get it working sometime
#@onready var follow = $follow
var level = stats.initLevel(1)
var charStats: Dictionary = stats.passCharStats(5,5,5,5,100)
var maxHealth = stats.calcMaxHealth(charStats["Body"], level)
var maxLogos = stats.calcMaxLogos(charStats["Mind"], level)
var currentHealth: int
var currentLogos: int
var xpRequired: int
var xpCurrent: int
var weapon: int #inventory/item sys?
var damage = stats.calcAttackDamage(charStats["Body"], weapon)

func _physics_process(delta):
	var inputVector = Vector2.ZERO
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	inputVector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	inputVector = inputVector.normalized()
	
	if inputVector != Vector2.ZERO:
		velocity = velocity.move_toward(inputVector * MAX_SPEED, ACCEL * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO,FRICTION * delta)
		
	move_and_slide()
	handleCollision()


func handleCollision():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()
		if(collider.name not in "TileMap"):
			print_debug(collider.name)

