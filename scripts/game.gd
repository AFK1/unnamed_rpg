extends Node2D

var scene = preload("res://scenes/map/first.tscn")

func _ready():
	add_child(scene.instantiate())
	pass
