extends KinematicBody2D

var requests = []

var velocity = Vector2()

func organize_hierarchy():	#decide which cells have priority
	pass

func check_requests():	#handle requests
	organize_hierarchy()
	for i in requests:
		i.function(self)

func get(request):	#recieve requests
	requests.append(request)

func move(direction, speed):
	velocity = direction * speed

func _process(_delta):
	velocity = lerp(velocity, Vector2(0,0), 0.07)
	check_requests()
	
	velocity = move_and_slide(velocity)
	
func _ready():
	pass
