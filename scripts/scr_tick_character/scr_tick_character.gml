/// @description add tick
stats[CURRENT_AP] ++; 
// check if it's fighter's turn
if (stats[CURRENT_AP] >= stats[MAX_AP]) {
	show_debug_message("-------------------------")
	show_debug_message(stats[NAME] + "'s turn")
	stats[CURRENT_AP] = stats[CURRENT_AP] > stats[MAX_AP] ? stats[MAX_AP] : stats[MAX_AP];
	obj_timer.is_running = false;
	obj_timer.actor = id;
	obj_timer.current_step = 0;
	exit;
}