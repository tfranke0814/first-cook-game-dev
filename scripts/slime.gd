extends CharacterBody2D

const speed = 45

var direction = 1

@onready var ray_cast_right: RayCast2D = $AnimatedSprite2D/RayCastRight
@onready var ray_cast_left: RayCast2D = $AnimatedSprite2D/RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding() or ray_cast_right.is_colliding():
		direction = - direction
		animated_sprite.flip_h = !animated_sprite.flip_h
		
	position.x += direction * speed * delta
	
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()
