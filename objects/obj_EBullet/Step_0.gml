/// @desc

x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,obj_Wall)) && (image_index != 0)
{
	while(place_meeting(x,y,obj_Wall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}	
spd= 0
instance_change(obj_HitSpark,true);

}
 

		
	