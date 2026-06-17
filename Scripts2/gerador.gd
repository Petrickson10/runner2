extends Node2D
var cena_obstaculo = preload("res://preload/Obstáculo.tscn")
var timer = 0
func _process(delta: float) -> void:
	timer += delta
	if timer >= 1.0:
		timer = 0
		gerar_obstaculo()
func gerar_obstaculo():
	var novo_obstaculo = cena_obstaculo.instantiate()
	novo_obstaculo.position = Vector2(1200,605) 
	add_child(novo_obstaculo)
