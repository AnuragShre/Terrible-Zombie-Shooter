extends CanvasLayer


func _process(_delta):
	$PanelContainer/Label.text = str(glo.bnum)
	$PanelContainer3/Label.text= str(glo.score)
