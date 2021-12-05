if init
{
	visible = false;
	
	if !instance_exists(Scene)
	{
		instance_create(SceneX,SceneY,Scene);
		instance_destroy(Caster);
	}
	
	init = false;	
}