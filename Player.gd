extends RigidBody2D

@export var speed = 100
var direction

func _ready():
	pass
	
func _process(delta):
	move(delta)
	pass

func move(delta):
	direction= 0
	if Input.is_action_pressed("MoveLeft"):
		direction = -1
	if Input.is_action_pressed("MoveRight"):
		direction = 1
		
	var velocity = Vector2.ZERO
	velocity.x = direction * speed
	
	position += velocity * delta
	
func _on_body_entered(body):
	#doit verifier si contact avec Jekkyl
	pass
