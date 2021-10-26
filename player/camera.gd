extends Area

var locked_on = false
var current_enemy
var enemyPos
export var RADIUS = 10.0 #default 7
var cameraV
export var camera_offset = 4.0 #default 4
export var DEBUG = false
# Called when the node enters the scene tree for the first time.
func input(delta):
	if DEBUG == true:
		if Input.is_action_pressed("ui_page_up"):
			RADIUS = RADIUS + 20*delta
			print("Radius: ",RADIUS)
		if Input.is_action_pressed("ui_page_down"):
			RADIUS = RADIUS - 20*delta
			print("Radius: ",RADIUS)
		if Input.is_action_just_pressed("cam_up"):
			camera_offset+= camera_offset*delta
			print("offset: ",camera_offset)
		if Input.is_action_just_pressed("cam_down"):
			camera_offset-= camera_offset*delta
			print("offset: ",camera_offset)
	if Input.is_action_just_released("debug_toggle"):
		if DEBUG == true:
			DEBUG = false
		else:
			DEBUG = true
	pass

func lock_on():
	enemyPos = current_enemy.global_transform.origin
	cameraV = get_parent().global_transform.origin - enemyPos
	$Camera.global_transform.origin = (enemyPos + cameraV + cameraV.normalized()*RADIUS)
	$Camera.look_at(enemyPos,Vector3(0,1,0))
	$Camera.v_offset = camera_offset
	get_parent().look_at(enemyPos - get_parent().global_transform.origin,Vector3(0,1,0))
	pass
	
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if locked_on == true:
		input(delta)
		lock_on()
	pass


func _on_Area_body_entered(body):
	current_enemy = body
	if locked_on == false:
		if current_enemy.is_in_group("enemy"):
			enemyPos = current_enemy.global_transform.origin
			$Camera.look_at(enemyPos,Vector3(0,1,0))
			get_parent().get_node("MeshInstance").look_at(enemyPos,Vector3(0,0,1))
			locked_on = true
	
	pass # Replace with function body.
