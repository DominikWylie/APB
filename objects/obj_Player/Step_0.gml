/// @desc Get player input

if (hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W"));
}

else
{
	
key_right=0;
key_left = 0;
key_jump = 0;
	
	
}

// calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1, obj_Wall)) && (key_jump)
{
	
  vsp = -8;	
}

// horizontal collision
if (place_meeting(x+hsp,y,obj_Wall))
{
   while(!place_meeting(x+sign(hsp),y,obj_Wall))
   {

      x = x + sign(hsp);
   }
	
	hsp = 0;
}

x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_Wall))
{
   while(!place_meeting(x,y+sign(vsp),obj_Wall))
   {

      y = y + sign(vsp);
   }
	
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_Wall))
{

  sprite_index = spr_PlayerA;
  image_speed = 0;
  if (sign(vsp) > 0) image_index = 1; else image_index = 0;
  
}
else
{
	if (sprite_index == spr_PlayerA) {
		
		audio_sound_pitch(snd_Landing,choose(0.9,1.0,1.1));
		audio_play_sound(snd_Landing,4,false);
		repeat(5)
	{
	with (instance_create_layer(x,bbox_bottom,"Bullets",obj_Dust))
	{
		
		vsp = -1;
	}
	
	
	{
	
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_Player;
	}
	else
	{
		sprite_index = spr_PlayerR;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp);
	}






}