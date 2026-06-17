extends Area2D

var velocidade = 400 
func _process(delta: float) -> void:
	position.x -= velocidade * delta
	
