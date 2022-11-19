extends "res://Scripts/cell_base.gd"

onready var cloned_cell = preload("res://Scenes/Cells/cell_base.tscn")

export var limit = 10
var clones = 0

func _ready():
	$Timer.start()

func clone():
	var new_cell = cloned_cell.instance()
	get_parent().add_child(new_cell)
	new_cell.position = position

func _process(_delta):
	if $Timer.is_stopped():
		if clones >= limit:
			return
		clone()
		clones += 1
		$Timer.start()

