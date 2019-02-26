///scr_act_inflict_damage_to_target()
actor_target.stats[CURRENT_HP] -= actor_spell[? "damage"];
// make sure hp not under 0
actor_target.stats[CURRENT_HP] = actor_target.stats[CURRENT_HP] < 0 ? 0 : actor_target.stats[CURRENT_HP];
actor_target.damage_animation_trigger = true;