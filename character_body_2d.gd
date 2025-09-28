extends CharacterBody2D


const SPEED = 300.0
var JUMP_VELOCITY = Global.jumping
var balding = false
signal respawned()
signal respawn()
signal respaw()
signal resp()

func ready():
	$AudioStreamPlayer2D.make_current()
func _process(_delta: float) -> void:
	JUMP_VELOCITY = Global.jumping
	
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED

	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Input.is_action_just_pressed("left"):
		if balding:
			$AnimatedSprite2D.animation = "leftBald"
		else:
			$AnimatedSprite2D.animation = "left"
	else:
		if Input.is_action_just_pressed("right"):
			if balding:
				$AnimatedSprite2D.animation = "rightBald"	
			else:
				$AnimatedSprite2D.animation = "right"
	if Global.feathers < 4:
		balding = true
	move_and_slide()
