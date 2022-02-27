extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer

export var score: = 100
export var temp := 0
export var arr := ["w","i","t","h", " g", "r", "e", "a", "t", " p","o","w", "e", "r", " c", "o", "m","e","s"," g", "r", "e", "a", "t", " r","e","s","p","o", "n", "s", "i", "b", "i", "l", "i", "t", "y."]

func _on_body_entered(body: PhysicsBody2D) -> void:
	picked()


func picked() -> void:
	if(PlayerData.score == ""):
		PlayerData.temp = 0
		
	if(PlayerData.temp <= arr.size()-1):
		PlayerData.score += arr[PlayerData.temp]	
		PlayerData.temp += 1
	else:
		PlayerData.temp = 0
		PlayerData.score += arr[PlayerData.temp]	
		PlayerData.temp = 1
		
		

	anim_player.play("picked")
