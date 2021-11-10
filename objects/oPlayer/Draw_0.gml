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
	sDeath = sPlayerDeath;
	break;
	
	case("Knight"):
	sIdle = spr_KnightPlayerIdle;
	sRun = spr_KnightPlayerRun;
	sJumpD = spr_KnightPlayerJumpD;
	sJumpM = spr_KnightPlayerJumpM;
	sJumpU = spr_KnightPlayerJumpU;
	sSlide = spr_KnightPlayerSlide;
	sParry = spr_KnightPlayerParry;
	sDeath = spr_KnightPlayerDeath;
	break;
	
	case("Mage"):
	sIdle = spr_MagePlayerIdle;
	sRun = spr_MagePlayerRun;
	sJumpD = spr_MagePlayerJumpD;
	sJumpM = spr_MagePlayerJumpM;
	sJumpU = spr_MagePlayerJumpU;
	sSlide = spr_MagePlayerSlide;
	sParry = spr_MagePlayerParry;
	sDeath = spr_MagePlayerDeath;
	break;
	
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
	case(ACTIVE):
		image_speed = 0.1;
		sprite_index = sParry;
	break;
	case(DEATH):
		image_speed = 0.1;
		sprite_index = sDeath;
	break;

	}

// Draw particle trail
TrailDraw(trail,w1,w2,c1,c2,image_alpha, image_alpha);

// Draw player

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