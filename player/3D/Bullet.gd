extends Area
var bullet_speed = 1000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(transform.basis.z * bullet_speed * delta)
	pass


func _on_Coll_body_entered(body):
	get_parent().queue_free()
	pass # Replace with function body.
