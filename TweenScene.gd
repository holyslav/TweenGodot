extends Control

const tween_item_scene = preload("res://TweenItem.tscn")

func _ready():
	for i in range(0, 10):
		var tween_item = tween_item_scene.instance()
		$TweenItems.add_child(tween_item)
		tween_item.trans_type = i
