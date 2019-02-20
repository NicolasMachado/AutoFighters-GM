/// scr_sc_execute_action

if (actor_spell[? "damage"]) {
	actor_target.stats[CURRENT_HP] -= actor_spell[? "damage"];
	// make sure hp not under 0
	actor_target.stats[CURRENT_HP] = actor_target.stats[CURRENT_HP] < 0 ? 0 : actor_target.stats[CURRENT_HP];
	actor_target.damage_animation = true;
}

if (actor_spell[? "heal"]) {
	actor_target.stats[CURRENT_HP] += actor_spell[? "heal"];
	// make sure hp not over max
	actor_target.stats[CURRENT_HP] = actor_target.stats[CURRENT_HP] > actor_target.stats[MAX_HP] ? actor_target.stats[MAX_HP] : actor_target.stats[CURRENT_HP];
	actor_target.heal_animation = true;
}

if (actor_spell[? "mp_cost"]) {
	actor.stats[CURRENT_MP] -= actor_spell[? "mp_cost"];
}
	
current_step++;