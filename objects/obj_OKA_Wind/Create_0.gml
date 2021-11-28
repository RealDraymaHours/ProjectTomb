/// @description resize image
image_yscale = 0.25;
move_towards_point(oFolCam.x, y, 8);
Staggered = true;
audio_play_sound(WindBlast1,10,false);

Knockback = false;
KnockbackDirection = 0;
KnockbackStrenght = 0;
KnockbackTime = 0;
Poise = 100;

alarm[0] = 100;
Active = true;