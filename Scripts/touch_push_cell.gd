extends "res://Scripts/cell_base.gd"

onready var touch_push = get_node("cell_requests/touch_push")

func _ready():
	pass # Replace with function body.

func push_colliders():
	var colliders = get_colliding_bodies()
	for i in colliders:
		if i.is_in_group("cell"):
			#make sure to push colliders only once
			i.get(touch_push)
			i.remove(touch_push)

func _process(_delta):
	push_colliders()

