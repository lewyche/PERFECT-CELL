extends "res://Scripts/cell_button.gd"

onready var push_cell = preload("res://Scenes/Cells/pushing_cell.tscn")

func _ready():
	pass # Replace with function body.

func place_cell(pos):
	var new_cell = push_cell.instance()
	new_cell.position = pos
	world.add_child(new_cell)
	

func _on_push_cell_button_pressed():
	if cursor.holding:
		return
	var new_cell = push_cell.instance()
	cursor.pick_up(new_cell)
	cursor.pushed_button = self
