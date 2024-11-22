extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visibility_layer = false # Replace with function body.



func _on_mouse_entered() -> void:
	visibility_layer = true
	text = "OK"


func _on_mouse_exited() -> void:
	visibility_layer = false
	text = ""
