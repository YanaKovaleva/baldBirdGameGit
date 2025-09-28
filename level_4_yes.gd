extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	this_button.visible = false # Replace with function body.
@onready var other_button: Button = $"/root/main/Node2D/LevelFour/level4no"
@onready var this_button: Button = $"/root/main/Node2D/LevelFour/level4yes"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.pass_to_four == true:
		this_button.visible = true


func _on_pressed() -> void:
	Global.pass_to_four = false
	Global.feathers-=1
	this_button.visible = false
	other_button.visible = !true
