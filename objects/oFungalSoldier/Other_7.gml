if ((state = "COMBO") || (state = "SLAM"))
{
switch(ComboState)
{
	case("TOP"):
		image_index = 0;
		sprite_index = sFungalSoldierComboTop
		ComboState = "DOWN"
	break;
	case("DOWN"):
		image_index = 0;
		sprite_index = sFungalSoldierComboDown;
		
		audio_play_sound(PlayerSoulWeapon1,1,false);
		if image_xscale = 1
		{
			instance_create(self.x + 80, self.y + 21 , obj_Hitbox);
			obj_Hitbox.xSize = 100;
			obj_Hitbox.ySize = 22;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		else
		{
			instance_create(self.x - 180, self.y + 21, obj_Hitbox);
			obj_Hitbox.xSize = 100;
			obj_Hitbox.ySize = 22;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}

		
		ComboState = "STAB";
	break;
	case("STAB"):
		image_index = 0;
		sprite_index = sFungalSoldierComboStab;
		audio_play_sound(PlayerSoulWeapon1,1,false);
		if image_xscale = 1
		{
			instance_create(self.x + 80, self.y + 48 , obj_Hitbox);
			obj_Hitbox.xSize = 100;
			obj_Hitbox.ySize = 22;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		else
		{
			instance_create(self.x - 180, self.y + 48, obj_Hitbox);
			obj_Hitbox.xSize = 100;
			obj_Hitbox.ySize = 22;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		
		

		
		ComboState = "FINISH"
	break;
	case("FINISH"):
		image_index = 0;
		sprite_index = sFungalSoldierComboFinish;
		audio_play_sound(PlayerSoulWeapon1,1,false);
		if image_xscale = 1
		{
			instance_create(self.x + 140, self.y + 48 , obj_Hitbox);
			obj_Hitbox.xSize = 30;
			obj_Hitbox.ySize = 32;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		else
		{
			instance_create(self.x - 180, self.y + 48, obj_Hitbox);
			obj_Hitbox.xSize = 30;
			obj_Hitbox.ySize = 32;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		ShakeCamera(8,2);
		ComboState = "SLAMEND";
	break;
	case("SLAM"):
		if image_xscale = 1
		{
			instance_create(self.x, self.y -48 , obj_Hitbox);
			obj_Hitbox.xSize = 140;
			obj_Hitbox.ySize = 122;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		else
		{
			instance_create(self.x-140, self.y -48, obj_Hitbox);
			obj_Hitbox.xSize = 140;
			obj_Hitbox.ySize = 122;
			obj_Hitbox.Time = 5;
			obj_Hitbox.Caster = self;
			obj_Hitbox.StatsSet = true;
		}
		sprite_index = sFungalSoldierSlamFinish;
		
		if StunnedPoints != 3
		{
			StunnedPoints += 1;
		}
		
		ShakeCamera(8,4);
		
		ComboState = "SLAMEND";
	break;
	case("SLAMEND"):
		
		state = "IDLE";
		if oFolCam.x > x
		{
			image_xscale = 1;
		}
		else
		{
			image_xscale = -1;
		}
	break;
}
}

if state = "DEATH"
{
	instance_destroy();
}