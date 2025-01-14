/// @desc
x = owner.x;
y = owner.y-20;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(obj_Player))
{
	if (obj_Player.x < x) image_yscale = -image_yscale;
	if (point_distance(obj_Player.x,obj_Player.y,x,y) <600)
	{
	image_angle = point_direction(x,y,obj_Player.x,obj_Player.y);
	countdown--;
	if (countdown <=0)
	{
		countdown = countdownrate;
		if (!collision_line(x,y,obj_Player.x,obj_Player.y,obj_Wall,false,false))
		{
		
		audio_play_sound(snd_EShot, 5, false);
	audio_sound_pitch(snd_Shot, choose(0.8,1.0,1.2));
	with (instance_create_layer(x,y, "Bullets", obj_EBullet))
	{
	spd= 3;
	direction = other.image_angle + random_range(-5,5);
	image_angle = direction;
		
	}
		
	}	
	}
	}
	
}