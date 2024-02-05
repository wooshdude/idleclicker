extends Control

@onready var settings_menu = $SettingsMenu
@onready var store = $Store
@onready var store_button = $StoreButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_settings_button_pressed():
	settings_menu.visible = !settings_menu.visible
	store_button.disabled = !store_button.disabled


func _on_store_button_pressed():
	store.visible = !store.visible


func _on_exit_button_pressed():
	store.visible = !store.visible
