/// @description inv
#macro INVENTORY_SLOTS_SUMMON 5
rowLength = 5;
inventory = array_create(INVENTORY_SLOTS_SUMMON, -1);

xDifference = x - camera_get_view_x(view_camera[0]);
yDifference = y - camera_get_view_y(view_camera[0]);