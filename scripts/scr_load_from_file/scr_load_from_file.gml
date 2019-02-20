// Load from file

var save_file = file_text_open_read(SAVE_FILE_NAME);

//var json_string = file_text_read_string(save_file);
//var save_map = json_decode(json_string);
var save_map = ds_map_secure_load(save_file); // for encryption, remove line above

var saved_fighters = ds_map_find_value(save_map, "fighters");
var fighter = ds_list_find_index(saved_fighters, 0);
var name = ds_list_find_value(fighter, 1);

for (var i = 0; i < ds_list_size(saved_fighters); i++) {
	var fighter = instance_create_layer(irandom_range(100, 1000), irandom_range(100, 500), "Fighters", obj_fighter);
	var saved_stats = ds_list_find_index(saved_fighters, i);
	var stats = [];
	for (var j = 0; j < array_length_1d(list_stats); j++) {
		stats[j] = saved_stats[| j];
	}
	fighter.stats = stats;
}

ds_map_destroy(save_map);
file_text_close(save_file);