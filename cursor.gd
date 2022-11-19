extends Sprite

onready var push = get_node("requests/push_request")

var clicked = false

func _ready():
	pass # Replace with function body.

func _process(_delta):
	position = get_global_mouse_position()
	if Input.is_action_pressed("click"):
		clicked = true
	if Input.is_action_just_released("click"):
		clicked = false


func _on_Area2D_body_entered(body):
	if clicked == true:
		if body.is_in_group("cell"):
			body.get(push)
			body.remove(push)
			
