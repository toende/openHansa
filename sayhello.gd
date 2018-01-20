extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("Button").connect("pressed",self,"_on_button_pressed")
	get_node("HSlider").connect("value_changed",self,"_on_slider_moved")
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_button_pressed():
    get_node("Label").text="HELLO!"
	
func _on_slider_moved(value):
    get_node("Label").text=String(value)
	