/// Create

// Variables
game_speed = 4;
is_running = false;
time = 0;
tick_rate = 4/game_speed;

// when turn
actor = -1;
current_step = -1;
actor_target = -1;
actor_spell = -1;

// queue of all animations to play if its size is above 0, the timer stops
// and the animations are played one by one
actions_currently_running = 0;
actions_queue = ds_queue_create();

// steps in order
steps = [
	"reset_ap",
	"select_spell",
	"select_target",
	/*"move_to_target",
	"animating",
	"execute_action",
	"animating",
	"move_back_into_place",
	"animating",
	"fill_actions_queue",*/
	"execute_actions",
	"end_turn"	
];