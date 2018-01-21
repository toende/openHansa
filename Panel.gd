extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var GrainPrice = 7
var Player
var PlayerMoney = 0

func _ready():
	get_node("HSliderGrain").connect("value_changed",self,"_on_slider_moved")
	Player = get_node("/root/Main/Player")
	PlayerMoney = Player.money
	get_node("LabelCurrentCity").text=get_node("/root/Main/Player/CurrentCity").CityName

	get_node("LabelPlayerGold").text=String(PlayerMoney)
	pass

func _on_slider_moved(value):
	get_node("LabelGrainShopAmnt").text=String(value)
	get_node("LabelGrainPlayerAmnt").text=String(value)
	get_node("LabelPlayerGold").text=String(PlayerMoney)
