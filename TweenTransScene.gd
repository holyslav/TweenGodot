extends Control

const tween_item_scene = preload("res://TweenItem.tscn")

var current_item = 0

func _ready():
	$Controls/Buttons/Prev.connect("pressed", self, "_on_prev")
	$Controls/Buttons/Play.connect("pressed", self, "_on_play")
	$Controls/Buttons/Next.connect("pressed", self, "_on_next")
	$Controls/Buttons/Parallel.connect("pressed", self, "_on_parallel")
	$Controls/Buttons/ResetAll.connect("pressed", self, "_on_reset_all")
	for i in range(0, 11):
		var tween_item = tween_item_scene.instance()
		tween_item.name = "TweenItem_" + str(i)
		tween_item.rect_position.y = 6 + 46 * i
		tween_item.set_transition_type(i)
		$TweenItems.add_child(tween_item)
	
	$TweenItems.get_node("TweenItem_0").selected(true)

func _on_prev():
	var res = _on_reset_all()
	if res is GDScriptFunctionState:
		yield(res, "completed")
	current_item -= 1
	if current_item < 0:
		current_item = 10
	_on_play()
	
func _on_play():
	var tween_item = $TweenItems.get_node("TweenItem_" + str(current_item))
	tween_item.run()
	tween_item.selected(true)
	
func _on_next():
	var res = _on_reset_all()
	if res is GDScriptFunctionState:
		yield(res, "completed")
	current_item += 1
	if current_item > 10:
		current_item = 0
	_on_play()
		
func _on_reset_all():
	for i in range(0, 11):
		var tween_item = $TweenItems.get_node("TweenItem_" + str(i))
		if tween_item.get_node("Tween").is_active():
			yield(tween_item.get_node("Tween"), "tween_all_completed")
		tween_item.stop()
		tween_item.selected()
	
func _on_parallel():
	var res = _on_reset_all()
	if res is GDScriptFunctionState:
		yield(res, "completed")
	get_tree().call_group("TweenItems", "run")
