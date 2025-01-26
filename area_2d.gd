extends Area2D

# Quando o corpo entra na área da armadilha
func _on_body_entered(body):
	if body.is_in_group("player"):  # Verifica se o objeto que entrou é o personagem
		game_over()

# Função que lida com o fim do jogo
func game_over():
	print("Game Over!")
