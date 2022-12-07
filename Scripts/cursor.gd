extends Sprite

onready var push = get_node("requests/push_request")

onready var pushed_button = get_node("../simulation_interface/hidden_default_button")

var simulation_mode = false
var clicked = false
var holding = false

func _ready():
	pass

func check_place_cell():
	#if holding cell and not hovering over other cells
	print(holding)
	if holding == true:
		place($holding_cell.get_child(0))

func _process(_delta):
	position = get_global_mouse_position()
	
	if Input.is_action_just_pressed("click"):
		
		clicked = true
		check_place_cell()
		
	if Input.is_action_just_released("click"):
		
		clicked = false
		
	if $holding_cell.get_child_count() > 0:
		
		$holding_cell.get_child(0).position = position
		
func replace(cell):
	if $holding_cell.get_child_count() >= 1:
		$holding_cell.get_children().clear()
	print(cell.get_node("Sprite").texture)
	$holding_cell_sprite.texture = cell.get_node("Sprite").texture

	$holding_cell.add_child(cell)
	
func pick_up(cell):	#to pick up cells in working area only
	holding = true
	replace(cell)

func place(cell):
	holding = false
	pushed_button.place_cell(position)
	$holding_cell.get_child(0).queue_free()
	$holding_cell_sprite.set_texture(null)
	
func _on_Area2D_body_entered(body):
	if clicked == true:
		if simulation_mode == true:
			if body.is_in_group("cell"):
				body.get(push)
				body.remove(push)
		else:
			if holding == false:		#if not currently holding a cell
				print("picking up")
				pick_up(body)
