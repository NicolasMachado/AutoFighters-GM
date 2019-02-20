/// Drag bar with offset and limit movement to room

if (my_parent.active) {
	x = mouse_x - drag_offset_x;
	y = mouse_y - drag_offset_y;

	if (x > room_width - my_parent.sprite_width) {
		x = room_width - my_parent.sprite_width;
	}

	if (y > room_height - my_parent.sprite_height) {
		y = room_height - my_parent.sprite_height;
	}

	if (x < 0) {
		x = 0;
	}

	if (y < 0) {
		y = 0;
	}
}