@tool
extends Node

class_name CharData

@onready var basic_info = $BasicData
@export var party_char: Resource

func _ready():
	basic_info.level
	print(basic_info.level)
	
