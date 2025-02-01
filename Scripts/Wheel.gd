extends Control

signal is_stopped

func _ready():
	get_node("../").register_wheel(self.name)
	pass 


func start_wheel():
	get_node("AnimatedSprite2D").play("Rolling")
	pass


func set_index(index):
	if index <= 2:
		get_node("AnimatedSprite2D").set_frame(index)


func get_wheel_index():
	return get_node("AnimatedSprite2D").get_frame()


func _on_Button_pressed():
	get_node("AnimatedSprite2D").stop()
	emit_signal("is_stopped", self.name, get_node("AnimatedSprite2D").frame)
	pass
