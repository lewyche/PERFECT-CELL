extends "res://Scripts/Request.gd"

func _ready():
	pass # Replace with function body.

onready var parent_cell = get_node("../../")

export var push_speed = 10

func function(affected_cell):
	var force = -affected_cell.position.direction_to(parent_cell.position)
	affected_cell.move(force, push_speed)
	
