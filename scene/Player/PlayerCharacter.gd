extends CharacterBody2D

@export var walking_speed = 200.0
@export var running_speed = 300.0
var speed = walking_speed
const JUMP_VELOCITY = -300.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_jumping : bool = false


func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("Sprint"):
		speed = running_speed
	if Input.is_action_just_released("Sprint"):
		speed = walking_speed

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity*delta
		
	if Input.is_action_just_pressed("MoveUp") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	
	var direction = Input.get_axis("MoveLeft","MoveRight")
	if direction:
		velocity.x = direction*speed
	else:
		velocity.x = move_toward(velocity.x,0,speed)
	
	move_and_slide()
