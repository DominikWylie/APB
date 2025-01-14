/// @desc
vsp = vsp + grv;

//Don't walk off edges 
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp,y+1,obj_Wall))
{
hsp = -hsp;	
		}


// horizontal collision
if (place_meeting(x+hsp,y,obj_Wall))
{
   while(!place_meeting(x+sign(hsp),y,obj_Wall))
   {

      x = x + sign(hsp);
   }
	
	hsp = -hsp;
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
  grounded = false;
  sprite_index = spr_EnemyBig;
  image_speed = 0;
  if (sign(vsp) > 0) image_index = 1; else image_index = 0;
  
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_EnemyBig;
	}
	else
	{
		sprite_index = spr_EnemyBig;
	}
	
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
