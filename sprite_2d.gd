extends Node2D

const VELOCIDADE = 100
const LIMITE_LOOP = -1920  # Ajuste de acordo com a largura da sua imagem

func _process(delta):
	position.x -= VELOCIDADE * delta
	
	# Verifica se a paisagem saiu da tela e reinicia a posição
	if position.x <= LIMITE_LOOP:
		position.x = 0
	
