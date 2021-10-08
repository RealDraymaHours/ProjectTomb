/// @description Health and mana

draw_sprite(spr_HealthBar_Background,0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_HealthBar,0,healthbar_x,healthbar_y,(global.Health/global.MaxHealth) * healthbar_width, healthbar_height);
draw_sprite(spr_HealthBar_Border,0, healthbar_x, healthbar_y);

draw_sprite(spr_HealthBar_Background,0, healthbar_x, healthbar_y + 20);
draw_sprite_stretched(spr_ManaBar,0,healthbar_x,healthbar_y + 20,(global.Mana/global.MaxMana) * healthbar_width, healthbar_height);
draw_sprite(spr_ManaBar_Border,0, healthbar_x, healthbar_y +20);


draw_text(200, 200, WeaponsInventory);