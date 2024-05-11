extends Area2D


func  _ready():
	$AudioStreamPlayer2D.play()


func _on_body_entered(body):
	if body.name == "Player":
		glo.bnum += 25
		$AudioStreamPlayer2D.play()
		queue_free()


func _on_timer_timeout():
	queue_free()
