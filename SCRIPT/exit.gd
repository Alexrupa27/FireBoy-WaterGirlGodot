extends Button
@onready var exit: Button = $"."

var originalScale
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalScale = exit.scale


func _on_mouse_entered() -> void:
	exit.scale = scale * 1.1


func _on_mouse_exited() -> void:
	exit.scale = originalScale
