extends Button
@onready var instruccions: Button = $"."

var originalScale
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalScale = instruccions.scale


func _on_mouse_entered() -> void:
	instruccions.scale = scale * 1.1


func _on_mouse_exited() -> void:
	instruccions.scale = originalScale
