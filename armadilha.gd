extends Area2D

# Quando o corpo entra na área (por exemplo, o personagem)
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):  # Verifica se o corpo que entrou é o personagem
		game_over()

# Função que lida com o fim de jogo
func game_over():
	print("Game Over!")
	get_tree().reload_current_scene()  # Reinicia a cena atual


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
