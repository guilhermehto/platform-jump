extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	connect("body_entered", self, "_on_body_entered")
	pass

func _on_body_entered(body):
	if body.name == "Player":
		if body.position.y < position.y:
			body.jump()
