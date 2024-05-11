extends Node2D

var z 
var p
var pic  
var a



func _process(_delta):
	
	
	p = [$"../Zombie/1".global_position,$"../Zombie/2".global_position,$"../Zombie/3".global_position,$"../Zombie/4".global_position,$"../Zombie/5".global_position]
	pic = p.pick_random()
	
	




func _on_timer_timeout():
	z = preload("res://scenes/zombie.tscn")
	a = z.instantiate()
	a.position = pic
	add_child(a)
