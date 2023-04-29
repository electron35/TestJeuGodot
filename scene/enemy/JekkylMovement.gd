extends CharacterBody2D

@export var starting_move_direction : Vector2 = Vector2.LEFT

@export var speed = 300.0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = starting_move_direction.x

var rng = RandomNumberGenerator.new()

var player_notice : bool = false
var player_ref = null

func one_or_minus_one():
	var my_random_number = rng.randi_range(0,1)
	if my_random_number == 0:
		my_random_number = -1
	return my_random_number

func _ready():
	rng.randomize()


func _physics_process(delta):
	
	if player_refs:
		$ChangeDirectionTimer.wait_time = 1
		if player_ref.position.x > position.x:
			direction = 1
		else:
			direction = -1
			
	if not is_on_floor():
		velocity.y += gravity*delta
	
	if direction:
		velocity.x = direction*speed
	else:
		velocity.x = move_toward(velocity.x,0,speed)
	
	move_and_slide()


func _on_timer_timeout():
	direction = one_or_minus_one()


func _on_sight_body_entered(body):
	player_ref = body


func _on_sight_body_exited(body):
	player_ref=null
