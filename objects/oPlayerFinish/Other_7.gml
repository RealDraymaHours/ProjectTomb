if init
{
	visible = false;
	
	instance_create(SceneX,SceneY,Scene);
	instance_destroy(Caster);
	init = false;	
}