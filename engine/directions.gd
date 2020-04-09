extends Node

func random_direction() -> Vector2:
 match (randi()%4):
  0:
   return Vector2.LEFT
  1:
   return Vector2.RIGHT
  2:
   return Vector2.UP
  _:
   return Vector2.DOWN 
