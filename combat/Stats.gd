extends Node

class_name BasicData

signal health_changed(old_val, new_val)
signal health_depleted()

@export var basicData = PartyChar.new()
var maxHealth = calcMaxHealth()
var maxLogos = calcMaxLogos()
# current health would prob be returned from a damage fucntion/component?
#var currentHealth 

func calcMaxHealth():
	maxHealth = 8 + (basicData.stats["Body"] * basicData.level * 1.3)
	return maxHealth

func calcMaxLogos():
	maxLogos = 8 + (basicData.stats["Mind"] * basicData.level * 1.3)
	return maxLogos
