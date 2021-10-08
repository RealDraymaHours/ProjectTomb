/// @description Variables
TextBorder = 22;
MyWeapons = WeaponsInventory;
MyColor = c_white;
IsEmpty = false;
EmptyMessage = "No items found";

globalvar ItemSelected, scrolledAmount, InventoryEndAt;
ItemSelected = 0;
scrolledAmount = 0;
InventoryEndAt = min(ds_grid_height(MyWeapons), floor((sprite_height - (TextBorder * 3)) / 32));
InventoryOnScreen = 0;
if(ds_grid_get(MyWeapons,0,0) == 0) {
	InventoryEndAt = 0;
	IsEmpty = true;
}