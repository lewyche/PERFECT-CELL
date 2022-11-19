extends "res://Scripts/Request.gd"

var gravity_scale = 1

func function(affected_cell):
	affected_cell.gravity_scale = gravity_scale
