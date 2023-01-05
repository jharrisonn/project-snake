extends Node2D

onready var preTroop = preload("res://objects/troop.tscn")

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("act"):
		var t = preTroop.instance()
		t.position = $tower.position 
		t.direction = get_global_mouse_position() / 2 - t.position
		self.add_child(t)
