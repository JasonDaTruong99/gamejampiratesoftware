extends Node

class_name CharStats

signal health_changed(old_val, new_val)
signal health_depleted()

var party_char: PartyChar
