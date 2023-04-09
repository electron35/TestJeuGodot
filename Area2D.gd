extends Area2D
signal player_is_hiding


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_interactible_is_interacted_with():
	enter_hiding_place()
	player_is_hiding.emit()

func enter_hiding_place():
	pass
