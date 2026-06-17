extends Area2D

var velocidade = 400

func _process(delta: float) -> void:
	position.x -= velocidade * delta
	if position.x < -100:
		queue_free()

func _on_body_entered(body: Node2D) -> void:
	# Verifica se quem tocou foi o "Jogador"
	if body.name == "Jogador":
		# Aumenta a pontuação (acessando o script do jogador)
		body.pontos += 1
		print("Pontos: ", body.pontos)
		queue_free() # Remove o item da tela após coletar
