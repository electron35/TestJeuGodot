extends RigidBody2D

signal is_runing
signal stop_running

@export var speed = 100
var direction

func _ready():
	pass
	
func _process(delta):
	move(delta)
	pass

func move(delta):
	var sprint = 1
	direction= 0
	
	if Input.is_action_pressed("MoveLeft"):
		direction = -1
	if Input.is_action_pressed("MoveRight"):
		direction = 1
	if Input.is_action_pressed("Sprint"):
		sprint = 1.5
	else:
		sprint = 1
		
	var velocity = Vector2.ZERO
	velocity.x = (direction * speed)*sprint
	
	position += velocity * delta
	
func _on_body_entered(body):
	#doit verifier si contact avec Jekkyl
	pass
