extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var new_scene = load("res://Game.tscn").instantiate()
	# Get the current scene tree
	var tree = get_tree()
	# Change the current scene
	tree.change_scene_to_packed(new_scene)
