extends Area2D
signal change_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_interactible_is_interacted_with():
	enter_door()
	change_scene.emit()
	pass # Replace with function body.

func enter_door():
	pass

func exit_door():
	pass
