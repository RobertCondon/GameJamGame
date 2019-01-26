/// @description Insert description here
// You can write your code in this editor
OrderToPlay = 9999;

AuidoPlaying = false;
CurrentSlot = noone;
TotalRight = 0;
if(room == roomROBTEST) {
	WinList[0] = snd_Test1;
	WinList[1] = snd_Test2;
	WinList[2] = snd_Test3;
	WinList[3] = snd_Test4;
	WinListLength = 3;
	NumberOfSlots = 4;
	CurrentList[0] = noone;
	CurrentList[1] = noone;
	CurrentList[2] = noone;
	CurrentList[3] = noone;
}

if(room == level1) {
	WinList[0] = snd_Paino1	
	WinList[1] = snd_Paino2;	
	WinListLength = 2;
	NumberOfSlots = 2;
	CurrentList[0] = noone;
	CurrentList[1] = noone;
} else if(room == level2) {
	WinList[0] = snd_Viola1
	WinList[1] = snd_Viola2;	
	WinList[2] = snd_Viola3;	
	WinListLength = 3;
	NumberOfSlots = 3;
	CurrentList[0] = noone;
	CurrentList[1] = noone;
	CurrentList[2] = noone;
} else if(room == level3) {
	WinList[0] = snd_Piccolo1;
	WinList[1] = snd_Piccolo2;	
	WinList[2] = snd_Piccolo3;	
	WinList[3] = snd_Piccolo4;	
	WinList[4] = snd_Piccolo5;	
	WinListLength = 5;
	NumberOfSlots = 5;
	CurrentList[0] = noone;
	CurrentList[1] = noone;
	CurrentList[2] = noone;
	CurrentList[3] = noone;
	CurrentList[4] = noone;
} else {
	WinList[0] = snd_Kalimba1;
	WinList[1] = snd_Kalimba2;	
	WinList[2] = snd_Kalimba3;	
	WinList[3] = snd_Kalimba4;	
	WinList[4] = snd_Kalimba5;	
	WinList[5] = snd_Kalimba6;	
	WinList[6] = snd_Kalimba7;	
	WinListLength = 7;
	NumberOfSlots = 7;
	CurrentList[0] = noone;
	CurrentList[1] = noone;
	CurrentList[2] = noone;
	CurrentList[3] = noone;
	CurrentList[4] = noone;
	CurrentList[5] = noone;
	CurrentList[6] = noone;
}
QuickRunThrough = false;