extends KinematicBody2D


export(String) var TYPE = "ENEMY"
export(int) var SPEED = 0

var movedir = Vector2.ZERO
var knockdir = Vector2.ZERO

var hitstun = 0
var health = 1

func movement_loop():
	var motion
	if hitstun == 0:
		motion = movedir.normalized() * SPEED
	else:
		motion = knockdir.normalized() * SPEED * 1.5
	move_and_slide(motion, Vector2.ZERO)

func damage_loop():
	if hitstun > 0:
		hitstun -= 1
	for body in $hitbox.get_overlapping_bodies():
		#if hitstun == 0 and body.get("DAMAGE") != null and body.get("TYPE") != TYPE:
		if hitstun == 0 and body.get("DAMAGE") != null and body.get("TYPE") != TYPE and body.get("TYPE") != "CAMERA": 
			
			health -= body.get("DAMAGE")
			hitstun = 10
			knockdir = transform.origin - body.transform.origin
