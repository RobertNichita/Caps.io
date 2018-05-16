/// @description Insert description here
// You can write your code in this editor
//changes here
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
shooting = mouse_check_button_pressed(mb_left);
melee = mouse_check_button_pressed(mb_right);

xdir = right - left;
ydir = down - up;

scr_move(xdir,ydir,spd);

///Point at mouse
angle = point_direction(x,y,mouse_x,mouse_y) - 90;

///Shooting

if(shooting){
	instance_create_layer(x,y,"Player",obj_bullet);
}

///Melee
if(melee && (meleeTimer > 0.5*room_speed)){
	instance_create_layer(x,y,"Player",obj_melee);
	meleeTimer = 0;
}
meleeTimer += 1;