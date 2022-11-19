extends RigidBody2D

var requests = []
var to_remove_requests = []

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

func remove(request): #put requests in list to be removed
	to_remove_requests.append(request)
	

func _process(_delta):
	check_requests()
	check_remove_requests()
	
func _ready():
	pass

