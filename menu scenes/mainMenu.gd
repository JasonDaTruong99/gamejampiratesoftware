extends Node2D

func _on_start_pressed():
	#File path to tutorial on init will go here, then to saved progress afterwards
	get_tree().change_scene_to_file("placeholder") 


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://menu scenes/settings.tscn")


func _on_quit_pressed():
	get_tree().quit()
