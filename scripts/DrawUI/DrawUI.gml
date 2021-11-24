// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawUI(){
	
healthbar_width = 132;
healthbar_height = 12;
healthbar_x = 32;
healthbar_y = 20;
	
//Healthbar
draw_sprite(spr_HealthBar_Background,0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_HealthBar,0,healthbar_x,healthbar_y,(global.Health/global.MaxHealth) * healthbar_width, healthbar_height);
draw_sprite(spr_HealthBar_Border,0, healthbar_x, healthbar_y);

//mana
draw_sprite(spr_HealthBar_Background,0, healthbar_x + 2, healthbar_y + 18);
draw_sprite_stretched(spr_ManaBar,0,healthbar_x ,healthbar_y + 18,(global.Mana/global.MaxMana) * healthbar_width, healthbar_height);
draw_sprite(spr_ManaBar_Border,0, healthbar_x + 2, healthbar_y +35);

//Items
draw_sprite(global.LeftIcon ,0, healthbar_x - 1, healthbar_y +33);
draw_sprite(global.RightIcon ,0, healthbar_x + 33, healthbar_y +33);
draw_sprite(global.FirstSpellIcon ,0, healthbar_x + 65, healthbar_y +33);
draw_sprite(global.SecondSpellIcon ,0, healthbar_x + 98, healthbar_y +33);
}