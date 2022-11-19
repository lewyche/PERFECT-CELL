extends "res://Scripts/Cell.gd"

onready var cell = preload("res://Scenes/Cells/Cell.tscn")

func _ready():
	randomize()
	$clone_cooldown.start()

#func get_rand_position():
#	var x = randi() % 2 - 1
#	var y = randi() % 2 - 1
#	var pos = Vector2(x,y)
#	return pos.normalized()

func clone():
	var new_cell = cell.instance()
#	var rand_pos = get_rand_position()
#	print(rand_pos)
	new_cell.position = position# + rand_pos
	get_parent().add_child(new_cell)
	
func _process(_delta):
	if $clone_cooldown.is_stopped():
		clone()
		$clone_cooldown.start()
