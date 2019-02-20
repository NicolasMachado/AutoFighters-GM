/// @description Draw

draw_set_halign(fa_center);
draw_sprite_ext(my_sprite, 0, x, y, sprite_direction, 1, 0, sprite_color, sprite_alpha);
if (!is_dead) {
	draw_healthbar(x-(cbl/2), y+cb_hp_y, x+(cbl/2), y+cb_hp_y+cbh, (stats[CURRENT_HP] / stats[MAX_HP])*100, c_black, c_green, c_green, bar_direction, true, true);
	draw_healthbar(x-(cbl/2), y+cb_ap_y, x+(cbl/2), y+cb_ap_y+cbh, (stats[CURRENT_AP] / stats[MAX_AP])*100, c_black, c_yellow, c_yellow, bar_direction, true, true);
	draw_healthbar(x-(cbl/2), y+cb_mp_y, x+(cbl/2), y+cb_mp_y+cbh, (stats[CURRENT_MP] / stats[MAX_MP])*100, c_black, c_blue, c_blue, bar_direction, true, true);

	draw_set_color(c_white);
	var hp = string(stats[CURRENT_HP]) + "/" + string(stats[MAX_HP]);
	draw_text(x, y-5, hp);
	draw_set_color(c_black);
}