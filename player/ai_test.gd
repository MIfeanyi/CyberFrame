extends KinematicBody

export var speed = 200
export var gravity = 0.3
var direction = Vector3()
export var max_boost = 5.0
var cooldown = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direction = Vector3(0,0,0)
	if Input.is_action_pressed("ai_left"):
		direction.x -=1
	if Input.is_action_just_released("ai_left"):
		$Combo.check_dash("ai_left",delta)
		$Combo.save_key("ai_left",delta)
	if Input.is_action_pressed("ai_right"):
		direction.x +=1
	if Input.is_action_pressed("ai_up"):
		direction.z -=1
	if Input.is_action_pressed("ai_down"):
		direction.z +=1
	direction = direction.normalized()
	direction = direction * speed * delta
	move_and_slide(direction,Vector3(0,1,0))