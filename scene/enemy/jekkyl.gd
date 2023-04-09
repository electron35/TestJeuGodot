extends "res://scene/enemy/enemy.gd"

@export var speed = 200

var direction
var rng = RandomNumberGenerator.new()
var player_notice = false
var player_ref

func _ready():
	direction = rng.randi_range(0,1)
	pass
	
func _process(delta):
	
	if (direction == 0): direction -=1
	if player_ref != null:
		if player_ref.position.x > position.x:
			direction = 1
		else:
			direction = -1
	var velocity = Vector2.ZERO
	velocity.x = (direction * speed)
	
	position += velocity * delta


func _on_timer_timeout():
	if player_notice == false:
		direction = rng.randi_range(0,1)


func _on_sight_body_entered(body):
		player_notice = true
		player_ref = body

func _on_sight_body_exited(body):
	player_ref = null
	player_notice = false
	pass # Replace with function body.
