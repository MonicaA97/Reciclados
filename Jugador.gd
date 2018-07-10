extends KinematicBody2D

var direccion
#var movimientoC

var mover_x = 0
var mover_y = 0

func _physics_process (delta):
		mover_y += 10
		
#		print(SMovimiento.direccion)
#		if SMovimiento.direccion == 1:
#			mover_x = 400
#		elif SMovimiento.direccion == -1:
#			mover_x = -400
#		else:
#			mover_x = 0
			
			
		direccion = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
#		movimientoC = preload("res://movimiento.gd")
#		var movimiento = movimientoC.new()
#		direccion = movimiento.getDireccion()
		
		if direccion == 1:
			mover_x = 400
		elif direccion == -1:
			mover_x = -400
		else:
			mover_x = 0

		
		move_and_slide(Vector2(mover_x, mover_y),Vector2(0,-1))
		
