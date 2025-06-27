extends StaticBody2D



func _ready():
	if Global.vida:
		randomize()
		var y_range = Vector2(0, 150)
		var random_y =  randi() % int(y_range[1]-y_range[0]) + 1 + y_range[0]
		self.position.y = random_y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.vida:
		self.position.x -= 2

		
		if Global.fase == 0:
			$Sprite_cima.set_texture(load("res://sprites/obstaculo_pedra.png"))
			$Sprite_baixo.set_texture(load("res://sprites/obstaculo_pedra.png"))
		if Global.fase == 1:
			$Sprite_cima.set_texture(load("res://sprites/obstaculo_neve.png"))
			$Sprite_baixo.set_texture(load("res://sprites/obstaculo_neve.png"))
		if Global.fase == 2:
			$Sprite_cima.set_texture(load("res://sprites/obstaculo_deserto.png"))
			$Sprite_baixo.set_texture(load("res://sprites/obstaculo_deserto.png"))
