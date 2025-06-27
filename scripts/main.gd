extends Node2D



var MyNode = preload("res://cenas/obstaculo.tscn")
var delay = 2



func criar_item():
	var obstaculo = MyNode.instantiate()
	add_child(obstaculo)
	$Timer.start(delay)

func _ready():
	criar_item()

func _on_timer_timeout():
	criar_item()
	$Timer.start(delay)
	
func _process(delta):
	$Label.text = str(Global.pontos)
	if Global.pontos < 30:
		Global.fase = 0
	if Global.pontos > 30 and Global.pontos < 60:
		Global.fase = 1
	if Global.pontos > 60:
		Global.fase = 2

	# ativar menu ao morrer
	if Global.vida:
		$menu.hide()
	else:
		if Global.pontos > Global.recorde:
			Global.recorde = Global.pontos
			Global.novo_recorde = true
		$menu.show()


