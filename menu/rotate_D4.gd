extends Spatial

export var ROTATE_SPEED = 0.1
onready var d = $D4
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	d.rotate(Vector3(0,1,0),ROTATE_SPEED*delta)
	pass
