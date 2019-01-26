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
}
QuickRunThrough = false;