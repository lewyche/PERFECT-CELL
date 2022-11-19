extends "res://Scripts/cell_base.gd"

onready var pull = $cell_requests/pull_request

func _ready():
	pass # Replace with function body.


func _on_pull_area_body_entered(body):
	if body.is_in_group("cell"):
		if body == self:
			return
		body.get(pull)


func _on_pull_area_body_exited(body):
	if body.is_in_group("cell"):
		body.remove(pull)

