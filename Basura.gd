extends KinematicBody2D

const GRAVITY = 30.0
var velocity = Vector2()
var spriBas = Sprite.new()
var sprite = Sprite.new()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	mover(delta)
	pass

func mover(delta):
	move_and_collide(Vector2(0, 1))
	velocity.y += delta * GRAVITY
	
	var motion = velocity * delta
	var collision_info = move_and_collide(motion)
	if collision_info:
		if(collision_info.collider.get_script()):
			
			spriBas = $"../Basura/spriBas"
			var textBas = spriBas.set_texture(null)
			print("basurero")
		else:
			sprite = $"../vida1"
			sprite.set_texture(load("res://icons/cancelarR.png"))
			
			spriBas = $"../Basura/spriBas"
			var textBas = spriBas.set_texture(null)
	
#	if collision_info:
#		print(collision_info.local_shape )

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass