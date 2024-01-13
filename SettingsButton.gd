extends Button

var settings_instance = null

func _ready():
	pass

func _on_pressed():
	if not settings_instance:
		var settings_instance2 = preload("res://Settings.tscn").instance()
		# Get the current scene tree
		var tree = get_tree()
		# Change the current scene
		tree.change_scene_to_packed(settings_instance2)
	else:
		print("Settings already open.")

func close_settings():
	if settings_instance:
		print("Closing settings.")
		settings_instance.queue_free()
		settings_instance = null
	else:
		print("Settings already closed.")
