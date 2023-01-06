extends Node2D

class_name Card

signal played(info)

export(int) var cost_of_use

func play_card(info):
	emit_signal("played", info)
	
	var entities = get_affected_entities(info)
	
	for effect in self.get_node("effects").get_children():
		effect.apply_effect(entities)

func get_affected_entities(info):
	var atack_mode = get_node("atack_mode").get_child(0)
	return atack_mode.get_affected_entities(info)
