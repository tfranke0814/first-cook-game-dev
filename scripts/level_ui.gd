extends CanvasLayer

@onready var score_label: Label = $ScoreLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	score_label.text = "%d" % [GameManager.score]
