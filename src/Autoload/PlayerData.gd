extends Node


signal updated
signal died
signal reset

var score: = "" setget set_score
var deaths: = 0 setget set_deaths
var temp := 0 setget set_temp


func reset():
	self.score = ""
	self.deaths = 0
	emit_signal("reset") 

func set_temp(new_temp: int) -> void:
	temp = new_temp
	emit_signal("updated")


func set_score(new_score: String) -> void:
	score = new_score
	emit_signal("updated")
	


func set_deaths(new_value: int) -> void:
	deaths = new_value
	emit_signal("died")
