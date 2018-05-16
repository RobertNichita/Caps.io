/// @description Follow player
if(distance_to_point(obj_player.x,obj_player.y) > 10){
	gotoX += (obj_player.x-gotoX+((mouse_x-obj_player.x)*0.2))*0.2;
	gotoY += (obj_player.y-gotoY+((mouse_y-obj_player.y)*0.2))*0.2;
	//x=gotoX;
	//y=gotoY;
}

viewW = camera_get_view_width(view_camera[0]);
viewH = camera_get_view_height(view_camera[0]);
viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);

newX = gotoX-viewW*0.5;
newY = gotoY-viewH*0.5;

factor = 0.1;
mouseW = mouse_wheel_down() - mouse_wheel_up();
//Zoom with mouse wheel
//zoomF = clamp(zoomF + (mouseW * factor), factor, 2);

lerpH = lerp(viewH, zoomF * 1080, factor);
newH = clamp(lerpH,0,room_height);
newW = newH*(960/540);
camera_set_view_size(view_camera[0],newW,newH);

offsetX = newX - (newW - viewW) *0.5;
offsetY = newY - (newH - viewH) *0.5;
newX = clamp(offsetX, viewX/2, room_width - newW);
newY = clamp(offsetY, viewY/2, room_height - newH);
camera_set_view_pos(view_camera[0], newX, newY);
