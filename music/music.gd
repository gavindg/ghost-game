extends Node2D

@export var intro: AudioStreamPlayer
@export var loop: AudioStreamPlayer

func _ready():
	intro.play()

func _on_loop_finished() -> void:
	loop.play()
