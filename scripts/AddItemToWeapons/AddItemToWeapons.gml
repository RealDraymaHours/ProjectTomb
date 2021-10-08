/// @function AddItemToWeapons
/// @description add item to weapons
/// @argument0 DSGrid Grid_To_Add
/// @argument1 String Item_Name
/// @argument2 Int Item_Speed
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @argument5 Script Item_Script
function AddItemToWeapons(
gridToAddTo,
newItemName,
newItemSpeed,
newItemDescription,
newItemSprite,
newItemScript){
	
//	for (i = 0; i < ds_grid_height(gridToAddTo); ++i)
//{
//	if(ds_grid_get(gridToAddTo,0,i) == newItemName) {
//		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemSpeed);
//		return true;
//}
//};

if (ds_grid_get(gridToAddTo, 0,0) != 0)
	ds_grid_resize(gridToAddTo, WeaponsInventoryWidth, ds_grid_height(gridToAddTo) + 1);
	
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemSpeed);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);

return true;

}


