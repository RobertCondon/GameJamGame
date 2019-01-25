/// @description Insert description here
// You can write your code in this editor
if(OrderToPlay < NumberOfSlots) {
	if(QuickRunThrough == false) {
		repeat(NumberOfSlots) {
			with(obj_Slot) {
				if(Order == other.OrderToPlay) {
					if(instance != noone) {
						other.CurrentList[Order] = instance.Music;
					} else {
						other.CurrentList[Order] = snd_Noone;
					}
				}
			}
			if(CurrentList[OrderToPlay] == WinList[OrderToPlay]) {
				TotalRight += 1;	
			}
			show_debug_message("Sound Win" + string(CurrentList[OrderToPlay]))
			show_debug_message("Sound Win 2nd" + string(WinList[OrderToPlay]))
			OrderToPlay += 1;
		}
		show_debug_message("TotalRight " + string(TotalRight))
		show_debug_message("Sound " + string(CurrentList[2]))
		OrderToPlay = 0;
		QuickRunThrough = true;
	}
	
	if(AuidoPlaying == false) {
		audio_play_sound(CurrentList[OrderToPlay], 0, false);
		AuidoPlaying = true;
	} else { 
		
		if(!audio_is_playing(CurrentList[OrderToPlay]) ){
			OrderToPlay += 1;
			AuidoPlaying = false;
		}
		
	}
} else {
	QuickRunThrough = false;	
	if(TotalRight == NumberOfSlots) {
		show_message("CORRECT");
		TotalRight = 0;
	} else {
		TotalRight = 0;	
	}
}