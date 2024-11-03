extends CharacterBody2D

enum FACING {left, right}

@export var speed : int = 80
@export var curFacing : FACING = FACING.right

var anim
var inputDirection = Vector2.ZERO

func _ready():
	anim = get_node("anim")

func _physics_process(delta):

	move()

	if (velocity != Vector2.ZERO):
		if(curFacing == FACING.left):
			animSwitch("walk_left")
		if(curFacing == FACING.right):
			animSwitch("walk_right")
	else:
		if(curFacing == FACING.left):
			animSwitch("idle_left")
		if(curFacing == FACING.right):
			animSwitch("idle_right")


func move():
	inputDirection = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()

	if (inputDirection.x < 0):
		curFacing = FACING.left
	elif (inputDirection.x > 0):
		curFacing = FACING.right

	velocity = inputDirection * speed
	move_and_slide()

func animSwitch(newAnim: String):
	if (anim.current_animation != newAnim):
		anim.play(newAnim)
