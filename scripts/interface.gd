extends Control



func _ready():
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.is_action_pressed("toggle_inventory"):
			$Inventory.toggle_inventory()
