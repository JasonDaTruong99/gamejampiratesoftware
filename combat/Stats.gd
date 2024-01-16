extends Node

class_name BasicData

signal health_changed(old_val, new_val)
signal health_depleted()

var basicData = PartyChar.new()
var maxHealth = calcMaxHealth()
var maxMana = calcMaxMana()
# current health would prob be returned from a damage fucntion/component?
#var currentHealth 

func _ready():
	basicData.initializeChar()
	initStats()

func initStats():
	basicData.stats["Body"] = 5
	basicData.stats["Speed"] = 5
	basicData.stats["Logos"] = 5 
	basicData.stats["Luck"] = 5
	basicData.level = 1

func calcMaxHealth():
	var maxHealth = 8 + (basicData.stats["Body"] * basicData.level * 1.3)
	return maxHealth

func calcMaxMana():
	var maxMana = 8 + (basicData.stats["Logos"] * basicData.level * 1.3)
	return maxMana
