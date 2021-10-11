/// @description Insert description here
// You can write your code in this editor
instance_create(self.x, self.y ,obj_bullet_trail);

	if place_meeting(x + lengthdir_x(speed+1, direction), y, oParSolid)
	{
		direction = direction + 90;	
	}
	
	if place_meeting(x,y + lengthdir_y(speed+1, direction), oParSolid)
	{
		direction = direction + irandom_range(95,85);
	}