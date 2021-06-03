extends Control

enum TransitionType {TRANS_SINE, TRANS_QUINT, TRANS_QUART, TRANS_QUAD,
TRANS_EXPO, TRANS_ELASTIC, TRANS_CUBIC, TRANS_CIRC, TRANS_BOUNCE, TRANS_BACK }
enum EaseType {EASE_IN, EASE_OUT, EASE_IN_OUT, EASE_OUT_IN}

export (TransitionType) var trans_type = TransitionType.TRANS_SINE
export (EaseType) var ease_type = EaseType.EASE_IN_OUT
export (float, 0.1, 10) var speed = 1

onready var cursor = $Content/Cursor
onready var tw = $Content/Tween

var need_reverse = false

func run():
	tw.interpolate_property(cursor, "rect_position:y", 137, 0, speed, trans_type, ease_type)
	tw.interpolate_property(cursor, "rect_position:x", 0, 137, speed, Tween.TRANS_LINEAR, EaseType.EASE_IN_OUT)
	tw.start()
	need_reverse = true

func _on_Tween_tween_all_completed():
	if need_reverse:
		need_reverse = false
		tw.interpolate_property(cursor, "rect_position:y", 0, 137, speed, trans_type, ease_type)
		tw.interpolate_property(cursor, "rect_position:x", 137, 0, speed, Tween.TRANS_LINEAR, EaseType.EASE_IN_OUT)
		tw.start()


func gui_input(event):
	if event is InputEventMouseButton and event.pressed and Rect2(rect_position, rect_size).has_point(event.position):
		run()
