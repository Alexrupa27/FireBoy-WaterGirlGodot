extends CharacterBody2D

@export var MAX_SPEED: float = 300.0  # Velocidad máxima de movimiento
@export var ACCELERATION: float = 15.0  # Tasa de aceleración
@export var FRICTION: float = 12.0  # Freno cuando no se presionan teclas
@export var JUMP_FORCE: float = 400.0  # Fuerza de salto
@export var GRAVITY: float = 900.0  # Gravedad

@onready var axis: Vector2 = Vector2.ZERO  # Entrada del jugador

func _physics_process(delta: float) -> void:
	# Aplicar gravedad
	velocity.y += GRAVITY * delta

	# Actualizar entrada
	get_input_axis()

	# Movimiento horizontal
	if axis.x != 0:
		# Asegúrate de que todo sea float para evitar el error
		velocity.x = lerp(velocity.x, float(axis.x) * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity.x = lerp(velocity.x, 0.0, FRICTION * delta)

	# Manejar salto
	if axis.y == 1 and is_on_floor():
		velocity.y = -JUMP_FORCE

	# Mover al personaje
	move_and_slide()

func get_input_axis() -> void:
	# Capturar entrada del jugador
	axis.x = int(Input.is_action_pressed("WaterGirl_right")) - int(Input.is_action_pressed("WaterGirl_left"))
	axis.y = int(Input.is_action_just_pressed("WaterGirl_up"))
