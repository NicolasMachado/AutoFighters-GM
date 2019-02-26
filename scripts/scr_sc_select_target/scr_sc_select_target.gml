/// Select Target

// get map of spell
var spell = actor_spell;
var selected_targets = ds_list_create();

// loop through all instances to find all eligibles
for (var i = 0; i < instance_number(obj_character); i++) {
	var caster = actor;
	var target = instance_find(obj_character, i);
	var is_eligible = true;
	
	if	(target == caster && !spell[? "can_target_self"]) ||
		(target.is_dead && !spell[? "can_target_dead"]) ||
		(spell[? "mp_cost"] && caster.stats[CURRENT_MP] < spell[? "mp_cost"])
	{
		is_eligible = false;
	}
	
	// if condition met
	if (is_eligible) {
		ds_list_add(selected_targets, target);	
	}
}

// we have a list with all eligible instances
if (ds_list_size(selected_targets) == 0) { // 0 target
	show_debug_message("No target!");
} else if (ds_list_size(selected_targets) == 1) { // 1 target
	show_debug_message("One target!");			
	actor_target = ds_list_find_value(selected_targets, 0);
} else { // multiple targets
	show_debug_message("Multiple targets!");
	// debug, for now we only pick one traget out of the multiple
	actor_target = ds_list_find_value(selected_targets, irandom_range(0, ds_list_size(selected_targets)-1));
	//actor_target = selected_targets;
}

// finally output target
show_debug_message(string(actor) + " using " + spell[? "name"] + " on " + string(actor_target));

current_step++;