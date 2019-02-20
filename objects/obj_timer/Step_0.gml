/// @description Steps du tour

if (current_step == -1) {
	
	exit;
	
}
	
switch(steps[current_step]) {	
	
	case "select_target" : scr_sc_select_target(); break;
	
	case "reset_ap" : scr_sc_reset_ap(); break;
	
	case "select_spell" : scr_sc_select_spell(); break;
	
	case "move_to_target" : scr_sc_move_to_target(); break;
	
	case "execute_action" : scr_sc_execute_action(); break;
	
	case "move_back_into_place" : scr_sc_move_back_into_place(); break;
	
	case "end_turn" : scr_sc_end_turn(); break;
	
	case "animating" : /* Wait for other instance to move to next step */; break;
	
}


