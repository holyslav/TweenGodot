extends Control

func _ready():
	
	$Viewport.size = get_viewport_rect().size
	$Viewport/prev_frame.rect_size = get_viewport_rect().size


func _on_Main_gui_input(event):
	get_tree().call_group("Items", "gui_input", event)

onready var time = 0
onready var init_prev = false
onready var init_screen = false

func _process(delta):
	time+=1
		
	if (time > 100 and not init_screen):
		$Screen.texture = $Viewport.get_texture()
		init_screen = true
		
	if (time > 200 and not init_prev):
		$Viewport/prev_frame.texture = $Viewport.get_texture()
		init_prev = true
