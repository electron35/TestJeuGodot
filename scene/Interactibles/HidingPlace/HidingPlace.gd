extends "res://scene/Interactibles/Interactible.gd"
signal player_is_hiding


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _interact():
	enter_hiding_place()
	player_is_hiding.emit()

func enter_hiding_place():
	pass
