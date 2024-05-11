extends CanvasLayer


func t(scene):
	$AnimationPlayer.play("tra1")
	
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play_backwards("tra2")
	get_tree().change_scene_to_file(scene)
	
