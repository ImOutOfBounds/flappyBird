extends AudioStreamPlayer


var current_stage = 0

var song0 = load("res://sons/soundtrack/04 - Overworld Day.mp3")
var song1 = load("res://sons/soundtrack/14 - Snow.mp3")
var song2 = load("res://sons/soundtrack/12 - Desert.mp3")


func _process(delta):
	if Global.vida:
		if Global.fase == 0 and current_stage == 0:
			self.stream = song0
			self.play()
			current_stage = 1
		if Global.fase == 1 and current_stage == 1:
			self.stream = song1
			self.play()
			current_stage = 2
		if Global.fase == 2 and current_stage == 2:
			self.stream = song2
			self.play()
			current_stage = 3
	else:
		current_stage = 0
		self.stop()
