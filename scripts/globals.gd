extends Node

var bnum
var score


func _ready():
	bnum = 100
	score = 0

func _process(_delta):
	if bnum>100:
		bnum = 100
