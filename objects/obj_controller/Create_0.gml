/// @description Initialisation

randomize();

scr_init_stats_and_consts();

// Variables
number_of_stats = array_length_1d(list_stats);
fighter_id_incr = 0;
number_of_fighters = 0;
show_debug_fighters = 0;

// Set fake data to file
scr_set_fake_data_to_file();

// Load fighters from file
scr_load_from_file();

// Init spells
all_spells = [];
scr_init_spells();

// place fighters on spots
scr_init_fight();