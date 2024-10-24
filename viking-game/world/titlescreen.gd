class_name MainMenu

extends Control

@onready var startButton = $MarginContainer/HBoxContainer/VBoxContainer/Button as Button
@onready var quitButton = $MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button
@export var startLevel = preload("res://world/world.tscn") as PackedScene


func _ready():
	startButton.button_down.connect(on_button_down)
	quitButton.button_down.connect(on_quit_pressed)

func on_button_down() -> void:
	get_tree().change_scene_to_packed(startLevel)

func on_quit_pressed() -> void:
	get_tree().quit()
