extends Area2D
var velocidade = 400
func _process(delta: float) -> void:
	position.x -= velocidade * delta
	if position.x < -100:
		queue_free()
func _on_body_entered(body: Node2D) -> void:
		body.pontos += 1
		queue_free()
