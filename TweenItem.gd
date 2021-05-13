extends Control

var transition_type = 0

const names = ["TRANS_LINEAR", "TRANS_SINE", "TRANS_QUINT", "TRANS_QUART", "TRANS_QUAD", 
				"TRANS_EXPO", "TRANS_ELASTIC", "TRANS_CUBIC", "TRANS_CIRC", "TRANS_BOUNCE", "TRANS_BACK"]

func _ready():
	add_to_group("TweenItems")

func stop():
	rect_position.x = 0

func set_transition_type(new_value:int):
	transition_type = new_value
	$Label.text = names[new_value]
	
func selected(value=false):
	if value:
		add_stylebox_override("panel", load("res://TweenItem_selected.tres"))
	else:
		add_stylebox_override("panel", load("res://TweenItem.tres"))

func run():
	$Tween.reset_all()
	$Tween.interpolate_property(self, "rect_position:x", 0, 900, 1, transition_type, Tween.EASE_IN_OUT)
	$Tween.start()
