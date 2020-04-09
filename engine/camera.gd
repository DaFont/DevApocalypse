extends Camera2D

func _process(delta):
	var pos = get_node("../player").global_position - Vector2.ZERO
	var x = floor(pos.x / 240) * 240
	var y = floor(pos.y / 240) * 240
	global_position = Vector2(x,y)
