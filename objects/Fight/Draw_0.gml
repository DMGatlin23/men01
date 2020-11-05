/// @description Insert description here
// You can write your code in this editor
 optionX = 32
 
 optionY = 16
 
 draw_set_font(fight_text);
 draw_set_halign(fa_left);
 draw_set_valign(fa_top);
 draw_set_colour(c_black)
 
 fontsize = font_get_size(fight_text);
 var buffer = 4 ;
 
 if(playerturn) && (!fighttext){
 
 for (var i = 0; i < array_length_1d(a_text);i ++){
	 text = a_text[i];
	 if (selected_option == i) {
		 draw_sprite(curser,50,optionX - sprite_get_width(curser),optionY + (( fontsize + buffer)*i));
	 }
	 draw_text (optionX, optionY + ((fontsize + buffer) * i),text); 
 }
  }
 //draw the message
 
 
 
 guiX = surface_get_width(application_surface) / 2;
 guiY = surface_get_height(application_surface);
 draw_sprite(text_box,0,guiX,guiY);
 
 if (fighttext){
	 textX = guiX - ((sprite_get_width(text_box) / 2 ) - (buffer*3));
	 textY = guiY - (sprite_get_height(text_box) - (buffer));
	 
	 draw_text_ext(textX,textY, ds_messages[| messageCounter],(fontsize + buffer), sprite_get_width(text_box) - (buffer *6));
 }
 
 //draw player health
 draw_set_valign(fa_bottom);
 draw_set_halign(fa_left);
 hpx = buffer
 hpy = surface_get_height(application_surface)-buffer
 
 draw_text(hpx,hpy,string(playerhp) + " / " + string(playerMAXHp));
 
 //DRAW ENEMY
 mx = surface_get_width(application_surface) /2;
 my = surface_get_height(application_surface) /2;
 draw_sprite_ext(Flamer,0,mx,my,4,4,0,c_white,1);