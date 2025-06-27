extends Node2D


var background_fundo: Vector2 = Vector2()
var background_chao: Vector2 = Vector2()

func _ready():
	pass # Replace with function body.



func _process(delta):
	background_fundo.x -= 2
	background_chao.x -= 1
	$ParallaxBackground_fundo.set_scroll_offset(background_fundo)
	$ParallaxBackground_chao.set_scroll_offset(background_chao)
