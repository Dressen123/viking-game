extends CharacterBody2D
 
 
var speed= 45
var player_chase = false
var player = null
 
func _physics_process(delta):
	if player_chase:
		position += (position - player.position)/speed
		$AnimatedSprite2D.play("run")

 
func _on_detection_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true
 
 
func _on_detection_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false	
