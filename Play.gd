extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	text = "PLAY"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_pressed():
	get_tree().change_scene("res://player_test.tscn")
	pass # Replace with function body.
