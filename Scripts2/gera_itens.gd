extends Node2D
var cena_item = preload("res://preload/item.tscn")
var timer = 0
func _process(delta: float) -> void:
	timer += delta
	if timer >= 3.0:
		timer = 0
		var novo_item = cena_item.instantiate()
		novo_item.position = Vector2(1200, randf_range(330, 530)) 
		add_child(novo_item)
