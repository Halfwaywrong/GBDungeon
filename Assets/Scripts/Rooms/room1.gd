extends Node

var room2 = load("res://Assets/Scenes/Rooms/room2.tscn")

func _on_door_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_packed(room2)
