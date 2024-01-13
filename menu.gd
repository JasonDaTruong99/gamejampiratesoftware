extends Control

func _ready():
	var start_button = get_node("StartButton")
	var exit_button = get_node("ExitButton")

	start_button.connect("pressed", self, "_on_StartButton_pressed")
	exit_button.connect("pressed", self, "_on_ExitButton_pressed")

func _on_StartButton_pressed():
	# Logic to start the game
	# For example, changing to another scene:
	get_tree().change_scene("res://path/to/your/game_scene.tscn")

func _on_ExitButton_pressed():
	# Logic to exit the game
	get_tree().quit()
