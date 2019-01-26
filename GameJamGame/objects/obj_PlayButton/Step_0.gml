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
			OrderToPlay += 1;
		}
		OrderToPlay = 0;
		QuickRunThrough = true;
	}
	
	if(AuidoPlaying == false) {
		with(obj_Slot) {
				if(Order == other.OrderToPlay) {
					sprite_index = spr_SlotPlaying;
				}
		}
		audio_play_sound(CurrentList[OrderToPlay], 0, false);
		AuidoPlaying = true;
	} else { 
		
		if(!audio_is_playing(CurrentList[OrderToPlay]) ){
			with(obj_Slot) {
				if(Order == other.OrderToPlay) {
					sprite_index = spr_Slot;
				}
			}
			OrderToPlay += 1;
			AuidoPlaying = false;
		}
		
	}
} else {
	QuickRunThrough = false;	
	if(TotalRight == NumberOfSlots) {
		show_message("CORRECT");
		if(room == level1) {
			room_goto(level2);	
		}
		TotalRight = 0;
	} else {
		TotalRight = 0;	
	}
}