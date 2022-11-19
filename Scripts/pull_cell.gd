extends "res://Scripts/Cell.gd"


onready var pull = $Owned_requests/pull

func _ready():
	pass

func _on_pull_area_body_entered(body):
	if body.is_in_group("cell"):
		body.get(pull)


func _on_pull_area_body_exited(body):
	if body.is_in_group("cell"):
		body.requests.erase(pull)

