extends Node2D

@onready var marker_2d: Marker2D = $respawn
@onready var marker2d: Marker2D = $respawn2
@onready var mark2d: Marker2D = $respawn3
@onready var markd: Marker2D = $respawn4


#deathzone1
func _on_deathzone_ready() -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		player.respawned.connect(_on_player_respawned.bind(player))
		
func _on_player_respawned(player):
	player.global_position= marker_2d.global_position


#deathzone2
func _on_deathzone_2_ready() -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		player.respawn.connect(_on_player_respawn.bind(player))

func _on_player_respawn(player):
	player.global_position= marker2d.global_position


#deathzone3
func _on_deathzone_3_ready() -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		player.respaw.connect(_on_player_respaw.bind(player))


func _on_player_respaw(player):
	player.global_position= mark2d.global_position	


#deathzone4
func _on_deathzone_4_ready() -> void:
	for player in get_tree().get_nodes_in_group("Player"):
		player.resp.connect(_on_player_resp.bind(player))


func _on_player_resp(player):
	player.global_position= markd.global_position
