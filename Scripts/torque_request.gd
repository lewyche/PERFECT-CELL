extends "res://Scripts/Request.gd"

export var torque = 10

func function(affected_cell):
	affected_cell.apply_torque_impulse(torque)
	
