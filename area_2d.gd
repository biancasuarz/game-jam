extends Area2D

func _on_Area2D_body_entered(body: Node) -> void:
	$Sprite2D/colisao.play()
