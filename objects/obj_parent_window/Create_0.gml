/// @description Create a window

depth = 0;
obj_parent_window.active = false;

// vars
window_width = 300;
window_height = 500;
cross_offset_x = 24;
cross_offset_y = 8;
active = true;

// set dimensions
image_xscale = window_width/sprite_width;
image_yscale = window_height/sprite_height;

// create cross close window
var cross_close = instance_create_layer((x + sprite_width - cross_offset_x), (y + cross_offset_y), "UI", obj_cross_close_window);
cross_close.my_parent = id;
cross_close.relative_depth = -20;

// add drag bar
var drag_bar = instance_create_layer(x, y, "UI", obj_drag_bar);
self.my_drag_bar_id = drag_bar.id;
drag_bar.image_xscale = window_width/drag_bar.sprite_width;
drag_bar.my_parent = id;
drag_bar.relative_depth = -10;