var xx, yy, tilemap, xp, yp, meeting;

xx = argument0;
yy = argument1;
tilemap = argument2;

xp = x;
yp = y;

x = xx;
y = yy;

meeting = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) && tile_index_mask
||tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) && tile_index_mask
||tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) && tile_index_mask
||tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) && tile_index_mask;

x = xp;
y = yp;

return (meeting);