extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var s
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").connect("pressed",self,"_on_Button_pressed")
	s = Label.new() # Create a new sprite!
	s.text="从代码创建"
	add_child(s) # Add it as a child of this node.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("Button").text="Hello World"

var accum=0

func _process(delta):
	accum+=delta
	get_node("Label").text=str(accum)