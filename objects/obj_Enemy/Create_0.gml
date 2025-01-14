if (hasweapon)
{
mygun = instance_create_layer(x,y,"Gun",obj_EGun)
with (mygun)
{
 owner = other.id	
}
}
else mygun= noone;
