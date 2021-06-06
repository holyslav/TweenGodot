extends Control

func _ready():
	_on_Main_resized()
	$Screen.texture = $Viewport.get_texture()
	$Viewport/prev_frame.texture = $Viewport.get_texture()
	
func _on_Main_gui_input(event):
	get_tree().call_group("Items", "gui_input", event)


func _on_Main_resized():
	$Screen.rect_size = get_viewport_rect().size
	$Viewport/prev_frame.rect_size = get_viewport_rect().size

