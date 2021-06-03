extends Control

func _ready():
	$Viewport.size = get_viewport_rect().size
	$Viewport/prev_frame.rect_size = get_viewport_rect().size
