@tool
extends Node

class_name CharData

@export var party_char: Resource
@onready var basic_info = $BasicData


func _ready():
	print(basic_info.basicData.level)
	
