/// @description Contact damage

if global.Staggered = false
{
	global.Health -= 1;
	global.Staggered = true;
}
