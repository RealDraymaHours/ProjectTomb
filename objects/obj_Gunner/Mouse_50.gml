/// @description Shoot basic bullet
if canSpell == true
{
instance_create(obj_Gunner.x,obj_Gunner.y, obj_friendly_bullet);
alarm[1] = coolTime
canSpell = false
}