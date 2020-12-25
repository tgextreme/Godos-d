extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func frase():
	var num_ale = randi()%133
	var f = File.new()
	f.open("res://texto.tres", File.READ)
	var index = 1
	while not f.eof_reached(): # iterate through all lines until the end of file is reached
		var line = f.get_line()
		
		#print(line + str(index))
		
		
		if(index==num_ale):
			var linea=line.substr(0,1)+"";
			linea=linea.to_upper();
			linea=linea+line.substr(1,line.length()-1)
			f.close()
			return linea;
		
		index += 1
		
	f.close()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var a= frase()
	get_node("Label").text=a;
	pass # Replace with function body.
	pass # Replace with function body.
