extends KinematicBody2D


export var direction = Vector2(0, 0)

func _ready():
	pass

func _process(delta):
	self.position += self.direction * delta
