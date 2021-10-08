/// @description draw inv on screen
draw_self();
draw_set_colour(MyColor);

draw_text(bbox_left+ TextBorder, bbox_top + TextBorder, "");
draw_text(bbox_left+ 125, bbox_top + TextBorder, "Name");
draw_text(bbox_left+ 225, bbox_top + TextBorder, "Speed");


ItemLeftStart = bbox_left + 120;
ItemTopStart = bbox_top + 48

for(i = 0; 1< InventoryEndAt; ++i){
	for(j =0; j < WeaponsInventoryWidth; ++j){
		if (j == 0)
		draw_text(ItemLeftStart, ItemTopStart + (i * 32), ds_grid_get(MyWeapons, 0, 1));
		if(j == 1)
			draw_text(ItemLeftStart + 140, ItemTopStart + (i * 32), ds_grid_get(MyWeapons, 1, i));
		if(j == 3)
			draw_sprite(ds_grid_get(MyWeapons, j, i), 0, bbox_left + 40, ItemTopStart + (1 * 32) + 16);
	}
}
		