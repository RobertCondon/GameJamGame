/// @description Insert description here
// You can write your code in this editor


if(THEGLOBALS.Holding == false or Holding == true) {
	if(PlayEffect == false) {
		PlayEffect = true;
		audio_play_sound(snd_PaperCrunch, 4, false);
	}
	Holding = true;
	alarm[0] = 20;
}


THEGLOBALS.Holding = true;