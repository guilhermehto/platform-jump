extends Area2D

onready var sprite = $Sprite

var height

func _ready():
	height = sprite.texture.get_height()
	connect("body_entered", self, "_on_body_entered")


func _on_body_entered(body):
	if body.name == "Player":
		body.knock_out()



