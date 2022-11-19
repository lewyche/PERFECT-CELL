extends "res://Scripts/Cell.gd"

onready var push = $Owned_requests/push


func _on_push_area_body_entered(body):
	if body.is_in_group("cell"):
		body.get(push)


func _on_push_area_body_exited(body):
	if body.is_in_group("cell"):
		body.requests.erase(push)
