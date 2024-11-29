extends Button

@onready var play: Button = $"."
var originalScale
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalScale = play.scale
func _on_mouse_entered() -> void:
	play.scale = scale * 1.1


func _on_mouse_exited() -> void:
	play.scale = originalScale
