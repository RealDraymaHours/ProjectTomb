if oPlayer.onGround && global.InTheOpen
{
	Px = oPlayer.x;	
}

if !position_meeting(Px,y,self)
{
	move_towards_point(Px,y,5);
	IsAttacking = true;
}
else
{
	IsAttacking = false;
	hspeed = 0;
}


if Health < 1
{
	Death = true;
}