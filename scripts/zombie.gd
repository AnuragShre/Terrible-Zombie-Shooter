extends CharacterBody2D

var player
var dir


var chasing = true

func _ready():
	player = $"../../map/Actor/Player"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	look_at(player.global_position)
	dir = (player.global_position - self.global_position).normalized() 
	 
	if chasing:
		velocity = dir * 150
	
	move_and_slide()
	

	




func _on_timer_timeout():
	queue_free() 







func _on_area_2d_body_entered(body):
	if body == player:
		player.visible = false
		get_tree().change_scene_to_file("res://scenes/gover.tscn")
		$AudioStreamPlayer2D.play()

