extends Sprite

signal shoot(bullet, direction, location)

var Bullet = preload("res://Bullet.tscn")

func _input(event):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_LEFT and event.pressed:
            emit_signal("shoot", Bullet, rotation, position)

func _process(delta):
    look_at(get_global_mouse_position())
	#pass

