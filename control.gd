extends Control

# Referência ao botão
@onready var reset_button = $Button  # Assume que o botão está diretamente no nó `Control`

func _ready():
	# Conectar o sinal do botão de reset
	reset_button.connect("pressed", self, "_on_reset_pressed")

# Função chamada quando o botão de reset é pressionado
func _on_reset_pressed():
	print("Resetando o jogo!")
	# Reiniciar a cena atual
	get_tree().reload_current_scene()
