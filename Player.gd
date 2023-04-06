extends RigidBody2D

@export var speed = 100
var direction = 0

func _ready():
	pass
	
func _process(delta):
	move(delta)
	pass

func move(delta):
	if Input.is_action_pressed("MoveLeft"):
		direction = -1
	if Input.is_action_pressed("MoveRight"):
		direction = 1
		
	var velocity = Vector2.ZERO
	velocity.x = direction * speed
	
	position += velocity * delta
