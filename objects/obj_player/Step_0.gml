/// @description Insert description here
// You can write your code in this editor
//changes here
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
shooting = mouse_check_button(mb_left);
melee = mouse_check_button_pressed(mb_right);

xdir = right - left;
ydir = down - up;

scr_move(xdir,ydir,spd);

///Point at mouse
angle = point_direction(x,y,mouse_x,mouse_y) - 90;

///Shooting
shotdelay ++;

if(shooting){
	if(wand){
		rangle = (angle+90)/180*-pi;
		instance_create_layer(x+(16*cos(rangle)),y+(16*sin(rangle)),"Player",obj_bullet);
	}
	if(rifle && shotdelay > 4){
		audio_play_sound(snd_gunshot,1,0);
		xjitter = random(accuracy)-accuracy/2;
		yjitter = random(accuracy)-accuracy/2;
		for(i = 0; i < range; i ++){
			aimx = x + lengthdir_x(i,angle+90)+(xjitter*i/1000);
			aimy = y + lengthdir_y(i,angle+90)+(yjitter*i/1000);
		
			if(tilemap_get_at_pixel("Collision",aimx,aimy)){
				part_particles_create(global.p_sys,aimx,aimy,global.shrapnel,3);
				break;
			}
		}
		shotdelay = 0;
	}
	part_particles_create(global.p_sys,x+lengthdir_x(16,angle+90),y+lengthdir_y(16,angle+90),global.muzzle,1);
}

///Melee
if(melee && (meleeTimer > 0.5*room_speed)){
	instance_create_layer(x,y,"Player",obj_melee);
	meleeTimer = 0;
}
meleeTimer += 1;