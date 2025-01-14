/// @desc
hsp = 3;
vsp = -4;
done = 0;
grv = 0.15;

image_speed = 0;
image_index = 0;
audio_play_sound(snd_Death, 10, false);
game_set_speed(30,gamespeed_fps);
with (obj_Camera) follow = other.id;
