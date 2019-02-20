/// Step

// follow main window with offset
if (instance_exists(my_parent)) {
	x = my_parent.x + my_parent.sprite_width - my_parent.cross_offset_x;
	y = my_parent.y + my_parent.cross_offset_y;
};

// change depth if active
depth = my_parent.depth + relative_depth;