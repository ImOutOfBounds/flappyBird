extends CanvasLayer

func _on_button_1_pressed():
	Global.vida = true
	Global.pontos = 0
	Global.novo_recorde = false
	get_tree().change_scene_to_file("res://cenas/tutorial.tscn")

func _process(delta):
	$VBoxContainer/Recorde.text = str("Recorde atual: ",Global.recorde)
	$VBoxContainer/Pontuacao.text = str("Pontuação: ",Global.pontos)
	
	if Global.novo_recorde:
		$Label.text = "Novo recorde!"
