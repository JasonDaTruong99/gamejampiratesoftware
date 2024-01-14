class_name LevelUp
var xp = 0
var level = 1
var xpTotal = 0
var xpRequired = get_required_xp(level)

func get_required_xp(level):
	return round(pow(level, 1.5) + 4*level + 10)

func gain_xp(amount):
	xpTotal +=amount
	xp += amount
	while xp >= xpRequired:
		xp -= xpRequired
		level_up()
		
func level_up():
	level += 1
	xpRequired = get_required_xp(level + 1)
	return level
