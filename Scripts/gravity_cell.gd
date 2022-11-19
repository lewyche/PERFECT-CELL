extends "res://Scripts/cell_base.gd"

onready var gravity = get_node("cell_requests/gravity_request")

func _on_gravity_area_body_entered(body):
	if body.is_in_group("cell"):
		if body == self:
			return
		body.get(gravity)


func _on_gravity_area_body_exited(body):
	if body.is_in_group("cell"):
		body.remove(gravity)
