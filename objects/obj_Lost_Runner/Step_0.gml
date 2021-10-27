if ((oPlayer.onGround) && (global.InTheOpen))
{
	Px = oPlayer.x;	
}

if Health < 1
{
	Death = true;

}
else
{
if ((!position_meeting(Px,Py,self)) && (oPlayer.y > self.y) && (oPlayer.y < self.y +31))
{
	mp_potential_step(Px, Py, 5, false);
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
}
