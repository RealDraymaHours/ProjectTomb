/// @description Un-stagger
global.Staggered = false;

if ((onGround) && (global.LeftCombo != global.LeftMaxCombo))
{
	global.LeftCombo = 0;
}

if ((onGround) && (global.RightCombo != global.RightMaxCombo))
{
	global.RightCombo = 0;	
}

Staggered = false;
MyLight = c_white;

