extends Control 

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var firve_boy: Node2D = $FirveBoy
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	pass
	#var anim_scene = preload("res://ESCENAS/canvas_carrega.tscn")
	#var instance = anim_scene.instantiate()
	#add_child(instance)
	#animated_sprite_2d.play("default")

func _on_play_pressed() -> void:
	animation_player.play("carrega")
	await animation_player.animation_finished
	get_tree().change_scene_to_file("res://ESCENAS/level.tscn")
	# Cambiar el tamaño del botón al hacer clic
		

func _on_instruccions_pressed() -> void:
	get_tree().change_scene_to_file("res://ESCENAS/intruccions.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
