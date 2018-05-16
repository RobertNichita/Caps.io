//followparametric
time = argument0;
dir = argument1;
amplitude = argument2;
phaseshift = argument3;
//calculate x coorinate of parametric
coord[0] = cos(dir)*30*sin(time)-sin(dir)*30*time;
//calculate y coordinate of parametric
coord[1] = sin(dir)*30*sin(time)+cos(dir)*30*time;
return coord;