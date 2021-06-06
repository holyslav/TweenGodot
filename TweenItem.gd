tool
extends Control

enum TransitionType {TRANS_SINE, TRANS_QUINT, TRANS_QUART, TRANS_QUAD,
TRANS_EXPO, TRANS_ELASTIC, TRANS_CUBIC, TRANS_CIRC, TRANS_BOUNCE, TRANS_BACK }
enum EaseType {EASE_IN, EASE_OUT, EASE_IN_OUT, EASE_OUT_IN}

export (TransitionType) var trans_type = TransitionType.TRANS_SINE
export (EaseType) var ease_type = EaseType.EASE_IN_OUT
export (float, 0.1, 10) var speed = 1
export (Vector2) var start = Vector2(10, 140)
export (Vector2) var end   = Vector2(140, 10)

onready var cursor = $Cursor
onready var tw = $Tween


var need_reverse = false

func _ready():
	cursor.position = start
	if Engine.editor_hint or true:
		start = Vector2(10, 140)
		end   = Vector2(140, 10)
		run()

func run():
	tw.interpolate_property(cursor, "position:x", start.x, end.x, speed, Tween.TRANS_LINEAR, EaseType.EASE_IN_OUT)
	tw.interpolate_property(cursor, "position:y", start.y, end.y, speed, trans_type, ease_type)
	tw.start()
	need_reverse = true

func _on_Tween_tween_all_completed():
	if need_reverse:
		need_reverse = false
		tw.interpolate_property(cursor, "position:x", end.x, start.x, speed, Tween.TRANS_LINEAR, EaseType.EASE_IN_OUT)
		tw.interpolate_property(cursor, "position:y", end.y, start.y, speed, trans_type, ease_type)
		tw.start()
		if Engine.editor_hint or true:
			yield(tw, "tween_all_completed")
			run()


func _gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		run()
