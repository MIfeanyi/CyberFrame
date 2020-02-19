extends OptionButton

# Called when the node enters the scene tree for the first time.
func _ready():
	text = tr("SELECT_MODE")
	add_item("Select Mode")
	add_item("Versus")
	add_item("Time Limit")
	add_item("Survival")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
