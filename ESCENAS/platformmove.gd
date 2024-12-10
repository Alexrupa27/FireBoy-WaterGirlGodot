extends Path2D

@export var loop = true
@export var speed = 2.0

@onready var path = $PathFollow2D
@onready var animation = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not loop:
		animation.play("platform")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	path.progress += speed
