extends Control
export var debug = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func update_FPS():
	$"Debug Items/FPS/Text".text = str(Performance.get_monitor(0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if debug == true:
		update_FPS()
	pass
