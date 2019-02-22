/// @function scr_default_spell_constructor(map, i, name_string)
/// @description Default spell constructor
/// @arg {ds_map} map Map of spell properties
/// @arg {real} i Iteration number / ID
/// @arg {string} name_string Name of the property

var map = argument0;
var i = argument1;
var name = argument2;

ds_map_set(map, "id", i);
ds_map_set(map, "name", name);
ds_map_set(map, "move_to_target", false);
ds_map_set(map, "damage", false); // or int
ds_map_set(map, "heal", false); // or int
ds_map_set(map, "can_target_self", true);
ds_map_set(map, "can_target_dead", false);
ds_map_set(map, "mp_cost", false);
ds_map_set(map, "heal_self", false);
ds_map_set(map, "actions_array", []);

all_spells[i] = map;
spell_counter++;