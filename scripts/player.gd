extends CharacterBody2D

@export var speed:int


func _process(_delta):
	look_at(get_global_mouse_position())
	
	var dir = Input.get_vector("a","d","w","s")
	dir = dir.normalized()
	velocity = dir * speed
	move_and_slide()
	
	if Input.is_action_pressed("att") and glo.bnum >0 :
		$Sprite2D2.show()
		$Sprite2D.hide()
		$AudioStreamPlayer2D.play()
	else:
		$Sprite2D.show()
		$Sprite2D2.hide()




func _on_timer_timeout():
	var pos = [$"1",$"2",$"3",$"4"]
	var cho = pos.pick_random()
	var p = preload("res://scenes/pbullet.tscn")
	var inst = p.instantiate()
	inst.global_position = cho.global_position
	$"../../..".add_child(inst)
	
	
	


func _on_audio_stream_player_2d_2_finished():
	$AudioStreamPlayer2D2.play()
