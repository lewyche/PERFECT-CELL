extends "res://Scripts/Request.gd"

onready var parent_cell = get_node("../../")

export var push_speed = 10

func function(affected_cell):
	var force = -affected_cell.position.direction_to(parent_cell.position)
	affected_cell.apply_central_impulse(force * push_speed)
	#affected_cell.move(force, push_speed)
	
