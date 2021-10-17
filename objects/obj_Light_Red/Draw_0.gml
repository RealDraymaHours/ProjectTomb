/// @description Insert description here
// You can write your code in this editor
depth = -98;
MyLight = c_red;
X = 0.5;
Y = 0.5;
Intensity = 0.3;
		
gpu_set_blendmode(bm_normal);
draw_sprite_ext(spr_SmallLight, 0,x,y,X,Y,0, MyLight, Intensity);//.5 is the intensity!!!