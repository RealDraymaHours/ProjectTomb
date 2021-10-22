
instance_create_layer(oPlayer.x, oPlayer.y-10,"Important_player_layer", obj_ACTION);
if !Saved
{
	Save();

	global.Health = global.MaxHealth;
	global.Mana = global.MaxMana;
	
	Saved = true;
}