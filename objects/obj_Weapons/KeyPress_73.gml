/// @description create inventory
if (!instance_exists(obj_InventoryGUI)){
	InventoryDisplay = instance_create_depth(0,0,100, obj_InventoryGUI);
	with(InventoryDisplay){
		x = oCamera.x;
		y = oCamera.y;
	}
}
else
{
	instance_destroy(obj_InventoryGUI);
}

