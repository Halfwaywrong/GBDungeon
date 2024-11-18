extends Node

var room1 = load("res://Assets/Scenes/Rooms/room1.tscn")

func _on_door_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_packed(room1)
