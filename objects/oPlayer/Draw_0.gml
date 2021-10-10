// Draw sprite depending on player state
switch(global.Armor)
{
	case("Base"):
	sIdle = sPlayerIdle;
	sRun = sPlayerRun;
	sJumpD = sPlayerJumpD;
	sJumpM = sPlayerJumpM;
	sJumpU = sPlayerJumpU;
	sSlide = sPlayerSlide;
	sParry = sPlayerParry;
	break;
	
	case("Knight"):
	sIdle = spr_KnightPlayerIdle;
	sRun = spr_KnightPlayerRun;
	sJumpD = spr_KnightPlayerJumpD;
	sJumpM = spr_KnightPlayerJumpM;
	sJumpU = spr_KnightPlayerJumpU;
	sSlide = spr_KnightPlayerSlide;
	sParry = spr_KnightPlayerParry;
	
}


	switch (state) {
    case IDLE: 
        image_speed = 0.1;
        sprite_index = sIdle;
    break;
    
    case RUN: 
        image_speed = 0.5; 
        sprite_index = sRun;
    break;
    
    case JUMP:
        // Mid jump   
        if (!(place_meeting(x, y + 2, oParSolid) && v != 0) && v >= -1.0 && v <= 1.0) {  
            sprite_index = sJumpM;  
       } else { 
            // Rise + fall
            if (v <= 0)  
                sprite_index = sJumpU;  
            else
                sprite_index = sJumpD;
        }
         
        // When against a wall   
        if (cRight || cLeft)
            sprite_index = sSlide;  
    break;

	}

// Draw particle trail
TrailDraw(trail,w1,w2,c1,c2,image_alpha, image_alpha);

// Draw player
if Parry = false
{
	if global.Staggered = false
	{
		if (onGround)
		draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
		else
		  draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, image_alpha);
	}
	else
	{
		if (onGround)
		draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_purple, image_alpha);    
		else
		draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_purple, image_alpha);
	}
}
else
{
	if global.Staggered = false
	{
		draw_sprite_ext(sParry, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);
	}
	else
	{
		draw_sprite_ext(sParry, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_purple, image_alpha);
	}
		
}