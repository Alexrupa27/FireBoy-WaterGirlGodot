extends Button

@onready var animation_player: AnimationPlayer = $"../../../AnimationPlayer"

func _ready() -> void:
	visibility_layer = false # Replace with function body.



func _on_mouse_entered() -> void:
	visibility_layer = true
	text = "Main Menu"


func _on_mouse_exited() -> void:
	visibility_layer = false
	text = ""


func _on_pressed() -> void:
	animation_player.play("carrega")
	await animation_player.animation_finished
	get_tree().change_scene_to_file("res://ESCENAS/control.tscn")
