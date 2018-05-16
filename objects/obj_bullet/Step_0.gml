/// @description Insert description here
// You can write your code in this editor
timer++;

origin_coords = scr_followparametric(timer,dir_b,0,0);
x = Ox + origin_coords[0];
y = Oy + origin_coords[1];
if(distance_to_point(obj_player.x,obj_player.y) > 1000){
	dead = true;
}

if(scr_tile_meeting(x+hspeed,y,"Collision")){
	while(!scr_tile_meeting(x+sign(hspeed),y,"Collision")){
		x+=sign(hspeed);
	}
	dead = true;
}

if(scr_tile_meeting(x,y+vspeed,"Collision")){
	while(!scr_tile_meeting(x,y+sign(vspeed),"Collision")){
		y+=sign(vspeed);	
	}
	dead = true;
}