/// @description Init

stats = [];
items = [];
type = "ally";
// list of character spells by ID
spells = [0, 1, 2];

// vars
color_change_speed = 7;
damage_animation_trigger = false;
damage_animation_running = false;
heal_animation_trigger = false;
heal_animation_running = false;
death_animation_trigger = false;
death_animation_running = false;
move_to_target_trigger = false;
move_to_target_running = false;
moving_back_to_place = false;
is_dead = false;

sprite_color = make_color_rgb(255, 255, 255);
sprite_alpha = 1;

bar_direction = 0;
sprite_direction = 1;
cbl = 100; // combat bar length
cbh = 10; // combat bar height

y_ecart = 2;

cb_hp_y = 0; // hp bar y
cb_ap_y = cb_hp_y + cbh + y_ecart; // ap bar y
cb_mp_y = cb_ap_y + cbh + y_ecart; // ap bar y

// get random skin
my_sprite = asset_get_index("spr_fighter_" + string(irandom_range(0, 2)));