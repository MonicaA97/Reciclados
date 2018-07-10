extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var direccion = 0
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_izquierda_pressed():
	direccion = -1

func _on_derecha_pressed():
	print(direccion)
	direccion = 1
	print(direccion)
