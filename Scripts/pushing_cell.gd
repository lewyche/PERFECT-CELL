extends "res://Scripts/cell_base.gd"

onready var push = $cell_requests/push_request

func _ready():
	pass # Replace with function body.

func _on_pushing_area_body_entered(body):
	if body.is_in_group("cell"):
		if body == self:
			return
		body.get(push)

func _on_pushing_area_body_exited(body):
	if body.is_in_group("cell"):
		body.remove(push)
