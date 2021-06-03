extends Control

func _ready():
	$Viewport.size = get_viewport_rect().size
	$Viewport/prev_frame.rect_size = get_viewport_rect().size


func _on_Main_gui_input(event):
	get_tree().call_group("Items", "gui_input", event)
