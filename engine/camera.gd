extends Camera2D

const TYPE = "CAMERA"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pos = get_node("../player").global_position - Vector2.ZERO
	var x = floor(pos.x / 240) * 240
	var y = floor(pos.y / 240) * 240
	global_position = Vector2(x,y)
