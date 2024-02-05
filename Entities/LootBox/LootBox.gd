extends Control

@onready var loot_box = $LootBox

#@export var resource : LootBox

# Called when the node enters the scene tree for the first time.
func load_button(resource):
	loot_box.icon = resource.icon
	loot_box.set_text("Name: %s \n Cost: $%s" %[resource.name, resource.cost])


