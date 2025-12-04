extends CharacterBody3D


const SPEED = 50.0
const JUMP_VELOCITY = 45.0

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta

if Input.is_action_just_pressed("jump") and is_on_floor():
	velocity.y = JUMP_VELOCITY


var input_dir = Input.get_vector(""
