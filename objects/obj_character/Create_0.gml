/// @description Init

stats = [];
items = [];
type = "ally";
spells = [0, 1, 2];

// vars
color_change_speed = 7;
damage_animation = false;
damage_animation_running = false;
heal_animation = false;
heal_animation_running = false;
moving_to_target = false;
moving_back_to_place = false;
die_animation = false;
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