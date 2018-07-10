extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var array = ["Reciclar es vida","Todo puede tener otra vida, recicla","Reciclar es de sabios","Reciclar no es tu obligación, es tu responsabilidad","Recicla porque el planeta lo vale","Mentalízate: ¡No lo tires, RECICLA!","¡Da vida al planeta: RECICLA!","Tu granito de arena es importante","La fabricación de papel reciclado consume un 62% menos \nde energía y un 86% menos de agua que el papel nuevo.","¡Por un mundo en equilibrio, amo conservo y reciclo!"]


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$info.text = array[randi()%10]
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_atras_pressed():
	get_tree().change_scene("res://Incio.tscn")
