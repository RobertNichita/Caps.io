///scr_move(xdir,ydir,spd);

xdir = argument0;
ydir = argument1;
spd = argument2;

xspd = xdir*spd;
yspd = ydir*spd;

//X-Axis collision

if(!scr_tile_meeting(x+xspd,y,"Collision")){
	x+= xspd;	
}else{
	while(!scr_tile_meeting(x+sign(xspd),y,"Collision")){
		x+= sign(xspd);	
	}
}

//Y-Axis collision

if(!scr_tile_meeting(x,y+yspd,"Collision")){
	y+= yspd;	
}else{
	while(!scr_tile_meeting(x,y+sign(yspd),"Collision")){
		y+= sign(yspd);	
	}
}
