extends Node2D

onready var preTroop = preload("res://objects/troop.tscn")

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("act"):
		var t = preTroop.instance()
		t.position = get_global_mouse_position() / 2
		self.add_child(t)
