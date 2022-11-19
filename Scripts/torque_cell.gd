extends "res://Scripts/cell_base.gd"

onready var torque = get_node("cell_requests/torque_request")

func _on_torque_area_body_entered(body):
	if body.is_in_group("cell"):
		if body == self:	#do not apply force on self
			return
		body.get(torque)


func _on_torque_area_body_exited(body):
	if body.is_in_group("cell"):
		body.remove(torque)
