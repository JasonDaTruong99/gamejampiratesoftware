@tool
extends Node

class_name CharData
var charData = PartyChar.new()
@onready var basic_info = $BasicData


func getLevel(charLevel):
	charLevel = charData.passCharLevel(charLevel)
	return charLevel
	
