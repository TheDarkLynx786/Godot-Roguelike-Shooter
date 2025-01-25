extends CharacterBody2D

var gun_sprite: Sprite2D

func _ready() -> void:
	gun_sprite = get_node("/root/Game/Player/Gun")


func _process(delta: float) -> void:
	if(absf(gun_sprite.global_rotation_degrees) > 90):
		
	else:
		
