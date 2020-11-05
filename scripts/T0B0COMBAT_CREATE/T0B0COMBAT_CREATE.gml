/// @description Insert description here
function T0B0COMBAT_CREATE() {
	// You can write your code in this editor
	a_text[0] = "att";
	a_text[1] = "def";
	a_text[2] = "spc";
	a_text[3] = "itm";
	a_text[4] = "run";

	selected_option = 0; // the arroes postion 
	playerturn = true;
	a_message[0]= "";
	messageCounter = 0; //tracks wich message were on
	fighttext = false; //displau fight text 
	batteltimer = 0;
	messagetimer = 0;
	read= 30;
	enemytimer =0 ;
	timetillenemymove = 15;


}
