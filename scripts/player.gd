extends CharacterBody2D


const SPEED = 200.0
const ACCELERATION = 1750.0
const FRICTION = 2500.0

@onready var animation_tree = $AnimationTree
@onready var animation_state = animation_tree.get("parameters/playback")

func _physics_process(delta):

	var direction = Vector2(
		Input.get_axis("go_left", "go_right"),
		Input.get_axis("go_up", "go_down")
		)
	if direction:
		animation_tree.set("parameters/Go/blend_position", direction)
		animation_tree.set("parameters/Idle/blend_position", direction)
		animation_state.travel("Go")
		velocity = velocity.move_toward(direction * SPEED, ACCELERATION * delta)
	else:
		animation_state.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	move_and_slide()
