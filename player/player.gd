extends "res://player/movement.gd"

var health = 100
var basis
var bullet
func _ready():
	basis = Basis()
	#var bulletscene = $Bullet
	#var bullet = bulletscene
	pass # Replace with function body.

func _physics_process(delta):
	movement(delta)
	pass

func spawm():
	#call_deferred("add_child", bullet)
	pass