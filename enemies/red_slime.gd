extends "res://engine/entity.gd"

const DAMAGE = 1

var movetimer_lenght = 20
var movetimer = 0



func _ready():
	$anim.play("default")
	movedir = dir.random_direction()
	
func _physics_process(delta):
	movement_loop()
	damage_loop()
	if movetimer > 0:
		movetimer -= 1
	if movetimer == 0 || is_on_wall():
		movedir = dir.random_direction()
		movetimer = movetimer_lenght
