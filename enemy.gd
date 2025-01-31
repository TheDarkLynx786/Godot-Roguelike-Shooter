extends CharacterBody2D


const SPEED = 300.0

var player: CharacterBody2D


func _ready() -> void:
	player = get_node("/root/Game/Player/")

func _physics_process(delta: float) -> void:
	follow()

func follow() -> void:
	rotation = position.angle_to_point(player.global_position)
	velocity = transform.x * Input.get_axis("Down", "Up") * SPEED
	print(velocity)
