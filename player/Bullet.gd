extends Position3D

var BULLET_SPEED = 1000
var speed 
var spawn = false
# Called when the node enters the scene tree for the first time.
func _ready():
	transform = get_parent().transform
	pass # Replace with function body.
func spawn():
	transform = get_parent().transform
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speed = transform.basis.z * BULLET_SPEED
	pass
