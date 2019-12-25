extends Node

var previous_key = ""
var previous_key_delta = 1000
var previous_key_released = false
export var dash_combo_time = 0.5

func save_key(key,d):
	previous_key=key
	previous_key_delta = d

func check_dash(key,d): #specifically for dash combos
	if(previous_key==key):
		if(previous_key_delta-d <=dash_combo_time):
			print("Dash executed. Time: ",previous_key_delta-d)
			return true
	return false
	pass

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
