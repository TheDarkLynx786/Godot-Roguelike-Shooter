extends Node2D

var gun_sprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gun_sprite = get_node("Gun Sprite")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if(absf(global_rotation_degrees) > 90):
		gun_sprite.set_flip_v(true)
	else:
		gun_sprite.set_flip_v(false)
	
