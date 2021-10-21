

with (oCamera) {
	alarm[0] = 32;
        screenShake = true;
}

repeat(10)
{
		RX = irandom_range(x - 150, x + 150);
		RY = irandom_range(-128, -16);
		
		instance_create(RX, RY, obj_FLKA_Rock);
}

instance_destroy();