if ((collision_rectangle(x,y+32,x-175, y-16, oPlayer,false,false)) || (collision_rectangle(x,y+32,x + 175, y-16, oPlayer,false,false)))
{
	if global.InTheOpen
	{
		CloseToPlayer = true;
	}
	else
	{
		CloseToPlayer = false;
	}
}
else
{
	CloseToPlayer = false;
}


if CloseToPlayer
{
	mp_potential_step(oPlayer.x, Py, 5, false);
	IsAttacking = true;
	move_bounce_solid(1);
}
else 
{
	IsAttacking = false;
	vspeed = 0;
	hspeed = 0;
}
vspeed = 0;

if y != Py
{
	y = Py;
}

if Health < 1
{
	Death = true;
}

