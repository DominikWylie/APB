/// @desc Move to next room

with (obj_Player)
{
  if (hascontrol)
  {
	  hascontrol = false;
	  SlideTransition(TRANS_MODE.GOTO,other. target);
	  
  }
	
}
