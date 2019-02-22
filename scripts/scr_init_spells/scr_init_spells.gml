/// Here we record each spell in a separate map, using a default constructor

spell_counter = 0;

// BASIC ATTACK
var basic_attack = ds_map_create();
scr_default_spell_constructor(basic_attack, spell_counter, "Basic Attack");
ds_map_replace(basic_attack, "can_target_self", false);
ds_map_replace(basic_attack, "damage", 50);
// actions
var basic_attack_actions = ds_queue_create();
ds_map_replace(basic_attack, "actions_queue", basic_attack_actions);
ds_queue_enqueue(basic_attack_actions, scr_act_move_to_target);
ds_queue_enqueue(basic_attack_actions, scr_act_inflict_damage_to_target);
ds_queue_enqueue(basic_attack_actions, scr_act_move_back_to_spot);


// BASIC HEAL
var basic_heal = ds_map_create();
scr_default_spell_constructor(basic_heal, spell_counter, "Basic Heal");
ds_map_replace(basic_heal, "heal", 50);
ds_map_replace(basic_heal, "mp_cost", 20);
// actions
var basic_heal_actions = ds_queue_create();
ds_map_replace(basic_heal, "actions_queue", basic_heal_actions);
ds_queue_enqueue(basic_heal_actions, scr_act_move_to_target);
ds_queue_enqueue(basic_heal_actions, scr_act_inflict_damage_to_target);
ds_queue_enqueue(basic_heal_actions, scr_act_move_back_to_spot);


// VAMPIRE STRIKE
var vamprire_strike = ds_map_create();
scr_default_spell_constructor(vamprire_strike, spell_counter, "Vampire Strike");
ds_map_replace(vamprire_strike, "move_to_target", true);
ds_map_replace(vamprire_strike, "heal_self", 30);
ds_map_replace(vamprire_strike, "can_target_self", false);
// actions
var vamprire_strike_actions = ds_queue_create();
ds_map_replace(vamprire_strike, "actions_queue", vamprire_strike_actions);
ds_queue_enqueue(vamprire_strike_actions, scr_act_move_to_target);
ds_queue_enqueue(vamprire_strike_actions, scr_act_inflict_damage_to_target);
ds_queue_enqueue(vamprire_strike_actions, scr_act_move_back_to_spot);