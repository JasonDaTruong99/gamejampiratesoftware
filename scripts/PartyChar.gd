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

func initLevel(value):
	level = value
	return level
	
func passCharStats(body, speed, mind, luck, corruption):
	stats["Body"] = body
	stats["Speed"] = speed
	stats["Mind"] = mind
	stats["Luck"] = luck
	stats["Corruption"] = corruption
	return stats

func calcMaxHealth(charscaling, levelscaling):
	maxHealth = round(8 + (charscaling * levelscaling * 1.3))
	return maxHealth

func calcMaxLogos(charscaling, levelscaling):
	maxLogos = round(8 + (charscaling * levelscaling * 1.3))
	return maxLogos

func calcAttackDamage(bodystat, weapon):
	var damage = round((bodystat * 4/3) + weapon * 5/9)
	return damage

