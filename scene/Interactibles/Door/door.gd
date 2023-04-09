extends "res://scene/Interactibles/Interactible.gd"
signal change_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _interact():
	enter_door()
	change_scene.emit()

func enter_door():
	pass

func exit_door():
	pass
