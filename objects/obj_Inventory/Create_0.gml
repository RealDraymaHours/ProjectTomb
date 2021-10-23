/// @description inv
#macro INVENTORY_SLOTS 12
rowLength = 6;
inventory = array_create(INVENTORY_SLOTS, -1);

xDifference = x - camera_get_view_x(view_camera[0]);
yDifference = y - camera_get_view_y(view_camera[0]);

inventory[0] = 1;
inventory[1] = 7;
inventory[2] = 2;
