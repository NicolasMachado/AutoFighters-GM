/// Seed fake data into ini

var fake_names = ["Rob", "Sandy", "Claire", "Francois"];

if file_exists("save.json") {
   file_delete("save.json");
}

var save_file = file_text_open_write(SAVE_FILE_NAME);
var debug_file = file_text_open_write("debug.json");
   
var rand_num_fighters = irandom_range(1, 5);

var save_map = ds_map_create();
var fighters = [];

// generate stats for each fighter
for (var i = 0; i < rand_num_fighters; i++) {
	var stats = [];
	stats[ID] = i;
	stats[CLASS] = "Warrior";
	stats[NAME] = scr_rand_from_array(fake_names);
	stats[CURRENT_AP] = irandom_range(0, 100);
	stats[MAX_AP] = irandom_range(100, 120);
	stats[CURRENT_HP] = irandom_range(0, 300);
	stats[MAX_HP] = irandom_range(300, 350);
	stats[CURRENT_MP] = irandom_range(0, 200);
	stats[MAX_MP] = irandom_range(200, 300);
	stats[AP_RATE] = random_range(0.9, 1.3);
	fighters[i] = stats;
}

ds_map_add(save_map, "fighters", fighters);

file_text_write_string(debug_file, json_encode(save_map));
ds_map_secure_save(save_map, save_file); // for save encryption, remove line above

ds_map_destroy(save_map);

file_text_close(save_file);
file_text_close(debug_file);