extends Node2D


func _physics_process(_delta):
	if Input.is_action_just_pressed("att") and glo.bnum >0:
		var b = preload("res://scenes/bullet.tscn")
		var i = b.instantiate()
		i.position = $map/Actor/Player.position
		i.rotation= $map/Actor/Player.rotation
		add_child(i)
		glo.bnum -= 1
	


func ready():
	$map/AudioStreamPlayer2D2.play()



