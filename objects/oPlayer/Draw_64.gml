/// @description Health and mana

//Healthbar
draw_sprite(spr_HealthBar_Background,0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_HealthBar,0,healthbar_x,healthbar_y,(global.Health/global.MaxHealth) * healthbar_width, healthbar_height);
draw_sprite(spr_HealthBar_Border,0, healthbar_x, healthbar_y);

//mana
draw_sprite(spr_HealthBar_Background,0, healthbar_x, healthbar_y + 20);
draw_sprite_stretched(spr_ManaBar,0,healthbar_x,healthbar_y + 20,(global.Mana/global.MaxMana) * healthbar_width, healthbar_height);
draw_sprite(spr_ManaBar_Border,0, healthbar_x, healthbar_y +29);

//Items
draw_sprite(global.MainIcon ,0, healthbar_x - 1, healthbar_y +36);
draw_sprite(global.FirstSpellIcon ,0, healthbar_x + 33, healthbar_y +36);
draw_sprite(global.SecondSpellIcon ,0, healthbar_x + 65, healthbar_y +36);

