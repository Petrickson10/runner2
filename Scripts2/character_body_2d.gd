extends CharacterBody2D
var vida = 5
var pontos = 0 # Adicione esta linha no seu script do Jogador

var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	# velocity já é uma propriedade do CharacterBody2D
	velocity += get_gravity()*delta # adiciona gravidade aos poucos
	
	if is_on_floor(): # se está no chão
		$Imagem.play("default") # dê play na animação padrão
		if Input.is_action_pressed("ui_select"): # se apertar espaço
			velocity.y = velocidade_pulo # velocidade para cima!
	else: # se não está no chão
		$Imagem.play("pular") # dê play na animação pular
	move_and_slide() # se mova de acordo com a propriedade velocity
