extends Node2D

@onready var scale_component: ScaleComponent = $ScaleComponent as ScaleComponent
@onready var hitbox_component: HitboxComponent = $Anchor/HitboxComponent as HitboxComponent
@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scale_component.tween_scale()
	hitbox_component.hit_hurtbox.connect(queue_free.unbind(1))
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
