/// @description stats


Damage = 0;
CoolTime = 30;

instance_create(oPlayer.x,oPlayer.y, dmg_Spell_Fireball);

move_towards_point(mouse_x, mouse_y, 4);
alarm[0] = 5;
