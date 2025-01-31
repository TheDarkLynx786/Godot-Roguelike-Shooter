extends Node2D


var enemy_scene = preload("res://Scenes/enemy.tscn")
var env: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	env = get_node("/root/Game/")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("Spawn (DEBUG)")):
		spawn()
	

func spawn() -> void:
	var enemy = enemy_scene.instantiate()
	env.add_child(enemy)
