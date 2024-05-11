extends Area2D

@export var Bspeed:int

var dirm
var dir


func _ready():
	dirm = get_global_mouse_position()
	dir = dirm - self.global_position
	dir = dir.normalized()
	


func _process(delta):

	position += Bspeed * dir * delta
	
	



func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("Zombie"):
		body.queue_free()
		queue_free()
		glo.score += 1
