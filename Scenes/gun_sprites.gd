extends Sprite2D

var textures = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	textures = load_textures("res://GunsPack/GunsPack/Guns")
	texture = textures[6]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func load_textures(folder_path: String) -> Array:
	var textures = []
	var dir = DirAccess.open(folder_path)
	
	if(dir):
		dir.list_dir_begin()
		var filename = dir.get_next()
		while (filename != ""):
			if (not dir.current_is_dir() and filename.ends_with(".png")):
				var text_path = folder_path + "/" + filename
				var texture = load(text_path)
				if (texture):
					textures.append(texture)
			filename = dir.get_next()
		dir.list_dir_end()
	else:
		print("Failed to open file at: ", folder_path)
	
	return textures
