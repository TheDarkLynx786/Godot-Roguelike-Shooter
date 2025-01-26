extends Area2D


const BULLET_SPEED = 1000.0
const BULLET_DIST = 1000.0

var direction = Vector2.ZERO
var init_pos: Vector2
var final_pos: Vector2
var gun: Node2D
var bullet_cont: Node2D

func _ready() -> void:
	gun = get_node("/root/Game/Player/Gun/")
	bullet_cont = get_node("/root/Game/Player/Gun/Bullet Container")
	direction = Vector2.RIGHT.rotated(gun.rotation)
	rotation = gun.rotation
	position = bullet_cont.global_position
	init_pos = position

func _physics_process(delta: float) -> void:
	
	position += direction * BULLET_SPEED * delta
	
	final_pos = position
	
	if (init_pos.distance_to(final_pos) > BULLET_DIST):
		queue_free()
