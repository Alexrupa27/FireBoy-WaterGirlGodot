extends CharacterBody2D
@onready var fire_boy: CharacterBody2D = $FireBoy

var push = false
var direction = 0

func _physics_process(delta: float) -> void:
		if not is_on_floor():
			velocity += get_gravity() * delta
		if push:
			velocity.x = direction*delta*5000
		else:
			velocity.x = 0
		move_and_slide()

func _on_left_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		direction = 1
		push = true


func _on_left_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		direction = 0
		push = false


func _on_right_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		direction = -1
		push = true


func _on_right_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		direction = 0
		push = false
