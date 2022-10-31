//Setup e Criação do Player
// ANDAR, PULAR E GRAVIDADE:
extends KinematicBody2D

var velocity = Vector2.ZERO #eixo x e y;
var move_speed = 480 #velocidade;
var gravity = 1200 #peso;
var jump_force = -360 #pulo;

func _physics_process(delta: float) -> void: #função nativa
	 velocity.y += gravity * delta #controla a gravidade

	 var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left")) #capitura os movimentos do jogador
	
	 if Input.is_action_pressed("jump"):
		  velocity.y = jump_force #ação de pular

	 velocity.x = move_speed * move_direction #ação de andar
	
	 move_and_slide(velocity)
