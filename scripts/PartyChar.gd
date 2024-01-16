extends Resource

class_name PartyChar

var name: String = "placeholder"
@export var level: int

var stats = {
	"Body": 10,
	"Speed": 10,
	"Logos": 10,
	"Luck": 10,
	"Corruption": 100
}

func initializeChar():
	var level = 1
	var name = "placeholder"
	var newStats = stats.duplicate()
