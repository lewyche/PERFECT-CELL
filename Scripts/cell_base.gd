extends RigidBody2D

var requests = []
var to_remove_requests = []

var force = Vector2()

func organize_hierarchy():	#decide which cells have priority
	pass

func check_requests():	#handle requests
	organize_hierarchy()
	for i in requests:
		i.function(self)

func check_remove_requests():
	for i in to_remove_requests:
		requests.erase(i)

func get(request):	#recieve requests
	requests.append(request)

func remove(request):
	to_remove_requests.append(request)
	
func move(direction, speed):
	force = direction * speed
	apply_central_impulse(force)

func stop():
	force = Vector2(0,0)

func _process(_delta):
	check_requests()
	check_remove_requests()
	
func _ready():
	pass

