extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func limpar_bg():
	$fase1.hide()
	$fase2.hide()
	$fase3.hide()
	

func _process(delta):
	if Global.vida:
		if Global.fase == 0:
			limpar_bg()
			$fase1.show()
		if Global.fase == 1:
			limpar_bg()
			$fase2.show()
		if Global.fase == 2:
			limpar_bg()
			$fase3.show()
