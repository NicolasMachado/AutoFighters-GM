// Movement to target script

var target = obj_timer.actor_target;
var face_position = target.type == "enemy" ? -50 : 50;
if (point_distance(x, y, target.x + face_position, target.y) > 20) {
	move_towards_point(target.x + face_position, target.y, 15);
} else {
	speed = 0;
	move_to_target_running = false;
	obj_timer.animations_currently_running--;
	obj_timer.executing_queue_head = false;
}