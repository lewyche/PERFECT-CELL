extends "res://Scripts/Request.gd"

onready var parent_cell = get_node("../../")

export var pull_speed = 500

func function(affected_cell):
	var velocity = affected_cell.position.direction_to(parent_cell.position)
	affected_cell.move(velocity,pull_speed)

