extends Control

func _ready():
	$Screen.texture = $Viewport.get_texture()
	$Viewport/prev_frame.texture = $Viewport.get_texture()
	
func _on_Main_gui_input(event):
	get_tree().call_group("Items", "gui_input", event)
