@tool
extends Node

class_name CharData

@export var party_char: Resource
@onready var basic_info = $BasicData

var stats = party_char.stats.duplicate

func printStats():
	print(stats["Body"])
