# This is the core singleton of your game, that holds
# key functions required to run the game
extends Node


# Initialize, configure the game and connect required
# signals
func _ready():
	_initialization()
	EgoVenture.configure(preload("res://configuration.tres"))
	MainMenu.connect("new_game", self, "_on_new_game")
	Inventory.connect("triggered_inventory_item", self, "_on_triggered_inventory_item")
	EgoVenture.connect("game_loaded", self, "_on_load")


# Triggered when an inventory item was used on another
#
# ** Parameters **
#
# - item1: First item
# - item2: Second item
func _on_triggered_inventory_item(item1: InventoryItem, item2: InventoryItem):
	pass


# Triggered when a new game is started.
func _on_new_game():
	_initialization()
	# Should call an introduction sequence
	#EgoVenture.change_scene("res://scenes/intro.tscn")


# Initialize the game state
func _initialization():
	var state = GameState.new()
	EgoVenture.state = state


# Triggered when a save game is loaded	
func _on_load():
	pass
