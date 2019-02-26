/// @description Steps du tour

if (current_step == -1) {
	exit;
}
	
// name strings must correspond to the steps in init
switch(steps[current_step]) {	
	
	case "reset_ap" : scr_sc_reset_ap(); break;
	
	case "select_spell" : scr_sc_select_spell(); break;
	
	case "select_target" : scr_sc_select_target(); break;
	
	case "execute_actions_queue" : scr_sc_execute_actions_queue(); break;
	
	case "end_turn" : scr_sc_end_turn(); break;
}


