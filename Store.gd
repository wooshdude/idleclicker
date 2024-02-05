extends Panel

@onready var v_box_container = $ScrollContainer/MarginContainer/VBoxContainer
const LOOT_BOX = preload("res://Entities/LootBox/LootBox.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	LootBoxManager.loot_box_list



func _on_visibility_changed():
		if (visible == true):
			for i in LootBoxManager.loot_box_list:
				var new_button = LOOT_BOX.instantiate()
				v_box_container.add_child(new_button)
				new_button.load_button(i)
		else:
			for n in v_box_container.get_children():
				v_box_container.remove_child(n)
				n.queue_free()
