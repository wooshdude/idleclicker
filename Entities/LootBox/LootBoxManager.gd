extends Node

@onready var loot_box_list = []

func create_loot_box(name,cost,icon):
	var newLootBox = LootBox.new()
	
	newLootBox.icon = load(icon)
	newLootBox.name = name
	newLootBox.cost = cost
	
	loot_box_list.append(newLootBox)

func _ready():
	create_loot_box("test", 200, "res://icon.svg")
	create_loot_box("EGG", 400, "res://icon.svg")
	create_loot_box("THE BEST LOOT", 700, "res://icon.svg")
