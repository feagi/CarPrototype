extends SubViewport


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var A = self.get_texture()
	var B = A.get_image()
	var C = B.get_data()
	network_setting.send(C.compress(3)) # Send full data of camera
