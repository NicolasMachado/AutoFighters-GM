/// @description Debug

// debug_fighters
if (show_debug_fighters) {
	var debug = "";
	var x_offset = 50;
	draw_set_halign(fa_left);

	for (var i = 0; i < instance_number(obj_fighter); i++) {
		var list_stats_string = "";
		var fighter = instance_find(obj_fighter, i);
	
		// stats
		for (var j = 0; j < array_length_1d(list_stats); j++) {
			list_stats_string += string(list_stats[j]) + ": " + string(fighter.stats[j]) + "\n";
		}
	
		draw_text(x_offset, 50, list_stats_string);
	
		x_offset += 150;
	}
}