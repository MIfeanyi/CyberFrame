extends OptionButton

var g_langue = ""

func getLangue():
	return g_langue

func setLangue(l):

	TranslationServer.set_locale(get_item_text(l))
	
# Called when the node enters the scene tree for the first time.
func _ready():
	print("current locales: ",TranslationServer.get_loaded_locales())
	g_langue = OS.get_locale().left(2)
	text = tr("SELECT_LANG")
	add_item("en")
	add_item("es")
	add_item("ja")
	add_item("ko")
	pass # Replace with function body.

#func _process(delta):
#	pass


func _on_Language_item_selected(id):
	print("selected id(var): [",id,"] - ",get_item_text(id))
	setLangue(id)
	pass # Replace with function body.
