#region select option 
 
 if (playerturn)&& (!fighttext){
 
 if(keyboard_check_pressed(vk_down)){
	 //if not at the last option  gp down one 
	 if(selected_option + 1) <= ( array_length_1d(a_text) - 1) {
		 selected_option ++;
		 //elese go back to the first option
	 }else{
		 selected_option = 0; 
	 }
	 
	 //play sound below me
	 //audio_play_sound(snd_move_arrow,1,false );
 }

		 if (keyboard_check_pressed(vk_up)){
		 //if not at the highest option go up one.
			 if ( (selected_option - 1) >= 0) {
			 selected_option --;
			 // else go to the bottom
			 
			 
			 
		 } else{
		 selected_option = array_length_1d(a_text) - 1;
	 }
 //play sound 
audio_play_sound(sound0,1,false);
	 
		 }
	  
	 if (keyboard_check_pressed(vk_space)) {
   messageCounter = 0 ;
   if (!ds_exists(ds_messages,ds_type_list)){
	   ds_messages = ds_list_create();   
	 }
   //attack		
	if (selected_option == 0) {	
		//a_message[0] = "player attack!";
		ds_messages[|0] = "Jab";
		roll = choose ("HIT[","MISS");
	
	if (roll = "MISS"){
		ds_messages[|1] = "But misses";
	}else{
		//if a hit is rolled
		var dmg = irandom(1) + 1;
		ds_messages[|1] = "it hit for" + string(dmg) + "damage ~!";
	}
	 } 
	 //defend
	 if (selected_option == 1) {		 	
		 //a_message[0] = "block";
		 ds_messages[|0] = "Block!";
	 }
	 //item
	  if (selected_option == 2) {			
		  //a_message[0] = "juice";
		   ds_messages[|0] = "juice";
	 }
	 // special
	  if (selected_option == 3) {		 		
		  //a_message[0] = "HAYMAKER";
		   ds_messages[|0] = "HAYMAKER";
	 }
	 //run
	  if (selected_option == 4) {				
		  //a_message[0] = "digital dash"; 
		   ds_messages[|0] = "you make a break into the brush";
		   roll = choose("fails","succeeds");
		   
		   if(roll = "fails"){
			   ds_messages[|1] = "The will to fight over comes your fear."
		   }else{
			   ds_messages[|1] ="You dash away using magic to block the trail behind you"
		   }
	 }
	 
	 
	 fighttext = true;
 }
 } 
 #endregion
 
 #region
 // cycle through messages 
 if (fighttext){
	 batteltimer ++;
	 //ait befoe takinng player inpit
	 if (batteltimer>=read){
		 if(keyboard_check_pressed(vk_space)){
			// if (messageCounter + 1) <= (array_length_1d(a_message) - 1) {
			if (messageCounter + 1) <= (ds_list_size(ds_messages) - 1) {
			 messageCounter ++;
			 //otherwise nexy actor takes their turn
		 }else{
			 playerturn = !playerturn;// false;
			 fighttext = false;
		  }
		  batteltimer = 0;  
		
	
	  
   }
 }
 }

 #endregion
 
 
 #region enemy turn
 if (!playerturn) && (!fighttext){
enemytimer ++;
if (enemytimer >= timetillenemymove){
	if (!ds_exists(ds_messages,ds_type_list)){
		ds_messages = ds_list_create();
	}
	messageCounter = 0
	a_message[0] = " he swings" ;
	fighttext = true;
	enemytimer = 0; 
	ds_messages[| 0] = "monster attacks";
	
	roll = choose("Hits","Misses");
	if (roll == "hits"){
		ds_messages[|1] = "and hits for " + string(dmg)+ "dmage~!";
}else{ds_messages[|1] = "but misses";
}
}
 }
 #endregion