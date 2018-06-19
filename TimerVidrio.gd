extends Timer


func _ready():
	self.connect("timeout", self, "pasarAlFinal")
	
func pasarAlFinal():
	get_tree().change_scene("res://PantallaFinal.tscn")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
