/// @description init spells

spell_counter = 0;

var basic_attack = ds_map_create();
scr_default_spell_constructor(basic_attack, spell_counter, "Basic Attack");
ds_map_replace(basic_attack, "move_to_target", true);
ds_map_replace(basic_attack, "can_target_self", false);
ds_map_replace(basic_attack, "damage", 50);

var basic_heal = ds_map_create();
scr_default_spell_constructor(basic_heal, spell_counter, "Basic Heal");
ds_map_replace(basic_heal, "heal", 50);
ds_map_replace(basic_heal, "mp_cost", 20);

var vamprire_strike = ds_map_create();
scr_default_spell_constructor(vamprire_strike, spell_counter, "Vampire Strike");
ds_map_replace(vamprire_strike, "move_to_target", true);
ds_map_replace(vamprire_strike, "heal_self", 30);
ds_map_replace(vamprire_strike, "can_target_self", false);