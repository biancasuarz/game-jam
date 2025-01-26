extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -700.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		$Sprite2D/jump.play()  

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):  # Verifica se o objeto que entrou é o personagem
		game_over()

# Função que lida com o fim do jogo
func game_over():
	$Sprite2D/pop.play()
	var timer = get_node("Sprite2D/Timer")
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://game_over_scene.tscn")
