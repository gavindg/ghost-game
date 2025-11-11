extends CharacterBody2D
@export var range:int
@export var speed:int
@export var initialDirection:int

var init_x_pos:int
var direction:int

func _ready():
	init_x_pos = position.x
	direction = initialDirection

func _process(delta):
	velocity.x += speed * direction * delta
	if direction == 1:
		if position.x > init_x_pos + range:
			direction = -1
	else:
		if position.x < init_x_pos - range:
			direction = 1
			
	move_and_slide()
