extends "res://Scripts/cell_base.gd"

onready var antigravity = get_node("cell_requests/antigravity_request")

func _on_antigravity_area_body_entered(body):
	if body.is_in_group("cell"):
		if body == self:
			return
		body.get(antigravity)

func _on_antigravity_area_body_exited(body):
	if body.is_in_group("cell"):
		body.remove(antigravity)
