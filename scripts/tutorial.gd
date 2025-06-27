extends Node2D



func _ready():
	
	var range_color = Vector2(0, 3)
	
	randomize()
	Global.red =  randi() % int(range_color[1]-range_color[0]) + 1 + range_color[0]
	
	randomize()
	Global.green =  randi() % int(range_color[1]-range_color[0]) + 1 + range_color[0]
	
	randomize()
	Global.blue =  randi() % int(range_color[1]-range_color[0]) + 1 + range_color[0]
	
	$FlappyBird.modulate = Color(Global.red, Global.green, Global.blue, 1)
	
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		Global.vida = true
		Global.pontos = 0
		Global.novo_recorde = false
		get_tree().change_scene_to_file("res://cenas/main.tscn")
		
	if Global.pontos < 10:
		Global.fase = 0
	if Global.pontos > 10 and Global.pontos < 20:
		Global.fase = 1
	if Global.pontos > 20:
		Global.fase = 2
