extends Node2D

class_name Entity

export(float) var moving_speed
export(int) var atack_power
export(int) var hit_points
export(int) var defense_power
export(float) var atack_range
export(float) var atack_speed
export(bool) var is_enemy
export(int) var mana
var loot_table

func _move_to(position):
	var dir = self.position - position
	position += dir.normalized()*moving_speed
			
	
func _die():
	queue_free()
