extends Control

func _ready():
	$Close_button.pressed.connect(self.toggle_inventory)

func toggle_inventory():
	visible = not visible

