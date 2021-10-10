/// @description stats


Damage = 0;
CoolTime = 30;

instance_create(oPlayer.x+32,oPlayer.y, dmg_Star_Spell);
instance_create(oPlayer.x-32,oPlayer.y, dmg_Star_Spell);
instance_create(oPlayer.x,oPlayer.y-32, dmg_Star_Spell);

move_towards_point(mouse_x, mouse_y, 4);




alarm[0] = 5;
