extends KinematicBody

export var speed = 500
export var gravity = 0.3
var direction = Vector3()
export var max_boost = 5.0
var cooldown = false

var lockon_state = false
#var dash_speed = 500
#var dash_time 
#var start_dash_time


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func movement(delta):
	direction = Vector3(0,0,0)
	if Input.is_action_pressed("ui_left"):
		direction.z -=1
		if lockon_state ==true:
			pass
			#($EnemyNode.global_transform.origin - $PlayerNode.global_transform.origin).tangent().normalized()
		else:
			pass
	if Input.is_action_just_released("ui_left"):
		$Combo.check_dash("ui_left",delta)
		$Combo.save_key("ui_left",delta)
	if Input.is_action_pressed("ui_right"):
		direction.z +=1
	if Input.is_action_pressed("ui_up"):
		direction.x +=1
	if Input.is_action_pressed("ui_down"):
		direction.x -=1
	if Input.is_action_pressed("ui_accept"):
		direction.y +=1
		if(cooldown ==false):
			pass
	if Input.is_action_pressed("ui_shoot"):
		pass
	else:
		if(cooldown == false):
			pass

	direction.y -= gravity
	direction = direction.normalized()
	direction = direction * speed * delta
	move_and_slide(direction,Vector3(0,1,0))
	pass
