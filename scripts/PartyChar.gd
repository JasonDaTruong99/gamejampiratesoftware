extends Resource

class_name PartyChar

var name: String = "placeholder"
@export var level: int
var maxHealth: int
var maxLogos: int 

@export var stats = {
	"Body": 10,
	"Speed": 10,
	"Mind": 10,
	"Luck": 10,
	"Corruption": 100
}

func _init():
	level = 1
	var newStats = stats.duplicate()

func calcMaxHealth(body, level):
	maxHealth = 8 + (body * level * 1.3)
	return maxHealth

func calcMaxLogos(mind, level):
	maxLogos = 8 + (mind * level * 1.3)
	return maxLogos
