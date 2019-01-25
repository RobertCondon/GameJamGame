/// @description Insert description here
// You can write your code in this editor
if(OrderToPlay < NumberOfSlots) {
	show_debug_message("Playing")
	if(AuidoPlaying == false) {
		with(obj_Slot) {
			if(Order == other.OrderToPlay) {
				other.CurrentSlot = self;
			}
		}
		if(CurrentSlot.instance != noone) {
			audio_play_sound(CurrentSlot.instance.Music, 0, false);
		}
		AuidoPlaying = true;
	} else { 
		if(	CurrentSlot.instance == noone) {
			OrderToPlay += 1;
			AuidoPlaying = false;
		} else {
			if(!audio_is_playing(CurrentSlot.instance.Music)) {
				OrderToPlay += 1;
				AuidoPlaying = false;
			}
		}
	}
}