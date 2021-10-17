draw_self();

depth = -98;
MyLight = c_white;
X = 0.5;
Y = 0.5;
Intensity = 0.7;
		
gpu_set_blendmode(bm_normal);
draw_sprite_ext(spr_SmallLight, 0,x+16,y+16,X,Y,0, MyLight, Intensity);//.5 is the intensity!!!