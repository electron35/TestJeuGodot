extends "res://scene/Ennemy/ennemy.gd"

@onready var timerHiding= get_node("HidingTimer")
@onready var timerRun= get_node("RunTimer")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


###HIDING TIMER###
func _on_player_is_hiding():
	timerHiding.set_wait_time(15)
	timerHiding.start()

func _on_player_stop_hiding():
	timerHiding.stop()
	pass

func _on_hiding_timer_timeout():
	#faire sortir de la cachette
	timeout()


###RUNING TIMER###
func _on_is_runing():
	timerRun.set_wait_time(10)
	timerRun.start()
	pass # Replace with function body.

func _on_stop_running():
	timerRun.stop()

func _on_run_timer_timeout():
	timeout()

func timeout():
	pass
