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

// steps in order
steps = [
	"reset_ap",
	"select_spell",
	"select_target",
	"move_to_target",
	"animating",
	"execute_action",
	"animating",
	"move_back_into_place",
	"animating",
	"end_turn"	
];