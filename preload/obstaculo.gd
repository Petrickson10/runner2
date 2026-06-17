extends Area2D
var velocidade = 400 
func _process(delta: float) -> void:
	position.x -= velocidade * delta
	


func _on_body_entered(body: Node2D) -> void:
	body.vid-=1
	queue_free()
