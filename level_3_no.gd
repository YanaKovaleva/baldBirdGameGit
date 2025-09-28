extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	this_button.visible = false # Replace with function body.
@onready var other_button: Button = $"/root/main/Node2D/LevelThree/level3yes"
@onready var this_button: Button = $"/root/main/Node2D/LevelThree/level3no"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Global.pass_to_three == true:
		this_button.visible = true


func _on_pressed() -> void:
	Global.pass_to_three = false
	this_button.visible = false
	other_button.visible = !true
