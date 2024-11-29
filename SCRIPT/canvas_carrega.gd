extends CanvasLayer

signal playCarrega

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playCarrega.emit()



func handle_connecting_signals() -> void:
	pass
