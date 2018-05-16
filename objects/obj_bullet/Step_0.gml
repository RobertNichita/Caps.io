/// @description Insert description here
// You can write your code in this editor
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