extends CanvasLayer



func _on_button_pressed():
	t.t("res://scenes/map.tscn")


func _on_audio_stream_player_2d_2_finished():
	$AudioStreamPlayer2D2.play()
