/// @desc

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


if (place_meeting(x,y,obj_Wall)) && (image_index != 0)
{
	while(place_meeting(x,y,obj_Wall))

instance_destroy();

}


 
