extends Node2D

var gun_sprite: Sprite2D
var bullet_scene = preload("res://Scenes/bullet.tscn")
var env: Node2D
var timer: Timer
var shootable = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gun_sprite = get_node("/root/Game/Player/Gun/Gun Sprite/")
	env = get_node("/root/Game/")
	timer = get_node("/root/Game/Player/Gun/Bullet Cooldown")
	timer.timeout.connect(timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(abs(gun_sprite.global_rotation_degrees) > 90):
		position.y = 9.188
	else:
		position.y = -9.188
	
	if(Input.is_action_just_pressed("Click") and shootable):
		shoot()
		shootable = false
		timer.start()
	


func shoot():
	var bullet = bullet_scene.instantiate()
	env.add_child(bullet)

func timeout():
	shootable = true
