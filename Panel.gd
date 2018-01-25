extends Panel

var GrainPrice
var GrainBuyPrice

var GrainAmount

var Player
var PlayerMoney = 0
var PlayerGrainAmount = 30

func _ready():
	GrainAmount = 0
	GrainPrice = get_parent().grainSellPrice
	GrainBuyPrice = get_parent().grainBuyPrice
	
	get_node("HSliderGrain").value = get_parent().grainAmount
	get_node("HSliderGrain").connect("value_changed",self,"_on_slider_moved")
	Player = get_node("/root/Main/Player")
	PlayerMoney = Player.money
	get_node("LabelCurrentCity").text=get_node("/root/Main/Player/CurrentCity").CityName

	get_node("LabelPlayerGold").text=String(PlayerMoney)
	get_node("LabelGrainShopAmnt").text=String(GrainAmount) 
	get_node("LabelGrainPlayerAmnt").text=String(PlayerGrainAmount)
	
	pass

func _on_slider_moved(value):
	if(value < get_parent().grainAmount):
		PlayerMoney += (get_parent().grainAmount - value) * get_parent().grainSellPrice
	
	get_node("LabelGrainShopAmnt").text=String(GrainAmount - value) 
	get_node("LabelGrainPlayerAmnt").text=String(PlayerGrainAmount + value)
	get_node("LabelPlayerGold").text=String(PlayerMoney)
