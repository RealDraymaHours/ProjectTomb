/// @description inv
#macro INVENTORY_SLOTS_SPELL 10
rowLength = 5;
inventory = array_create(INVENTORY_SLOTS_SPELL, -1);

xDifference = x - camera_get_view_x(view_camera[0]);
yDifference = y - camera_get_view_y(view_camera[0]);

//inventory[0] = 3;
//inventory[1] = 8;

