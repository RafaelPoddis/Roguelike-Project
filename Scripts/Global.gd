extends Node

#const SCENE_ROUTES = {
	#"START_SCREEN": "res://Scenes/start_screen.tscn",
	#"LEVEL_1": "res://Scenes/level_1.tscn",
	#"OPTIONS": "res://Scenes/options.tscn"
#}
#
#func set_scene(scene: String):
	#if SCENE_ROUTES.has(scene):
		#get_tree().change_scene_to_file(SCENE_ROUTES[scene])
	#else:
		#print("set_scene error: Could not find scene " + scene)
