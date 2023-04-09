extends Area2D

signal is_interacted_with
var can_be_interact_with

# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	can_be_interact_with = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if area_entered:
		can_be_interact_with = true
	if area_exited:
		can_be_interact_with = false
	if can_be_interact_with && Input.is_action_pressed("Interact"):
		is_interacted_with.emit()
