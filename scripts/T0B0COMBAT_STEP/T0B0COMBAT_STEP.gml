function T0B0COMBAT_STEP() {
#region select option 
 
	 if (playerturn)&& (!fighttext){
 
	 if(keyboard_check_pressed(vk_down)){
		 //if not at the last option  gp down one 
		 if(selected_option + 1) <= ( array_length_1d(a_text) - 1) {
			 selected_option ++;
			 //elese go back to the first option
		 }else{
			 selected_option = 0 ; 
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
	 //audio_play_sound(snd_move_arrow,1,false);
	 
			 }
	  
		 if (keyboard_check_pressed(vk_space)) {
	   messageCounter = 0 ;
	   //attack		
		if (selected_option == 0) {		
			a_message[0] = "Jab";
		 } 
		 //defend
		 if (selected_option == 1) {		 	
			 a_message[0] = "block";
		 }
		 //item
		  if (selected_option == 2) {			
			  a_message[0] = "juice";	 
		 }
		 // special
		  if (selected_option == 3) {		 		
			  a_message[0] = "HAYMAKER";
		 }
		 //run
		  if (selected_option == 4) {				
			  a_message[0] = "digital dash"; 
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
				if (messageCounter + 1) <= (array_length_1d(a_message) - 1) {
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
		a_message[0] = " he swings" ;
		fighttext = true;
		enemytimer = 0; 
	
	 }

	 }
 #endregion


}
