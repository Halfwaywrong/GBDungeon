extends Node

var room1_degraded = load("res://Assets/Scenes/Rooms/room_1_degraded.tscn")

func _on_door_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_packed(room1_degraded)
