extends Node2D

# Carrega a cena do obstáculo
var cena_obstaculo = preload("res://preload/Obstáculo.tscn")
var timer = 0

func _process(delta: float) -> void:
	# Conta o tempo
	timer += delta
	
	# Se passar de 2 segundos, cria um obstáculo
	if timer >= 2.0:
		timer = 0 # Zera o timer
		gerar_obstaculo()

func gerar_obstaculo():
	var novo_obstaculo = cena_obstaculo.instantiate()
	
	# Define a posição (fora da tela à direita, e y na altura do chão)
	# Ajuste o valor de Y conforme a posição do seu chão
	novo_obstaculo.position = Vector2(1200, 610) 
	
	# Adiciona na cena
	add_child(novo_obstaculo)
