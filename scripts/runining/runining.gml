/// animaation frame durration 
function runining() {
	var anim_lenght = 9;
	var frame_size =64;
	var frame_spd = 12

	     if (movex < 0) y_frame = 9 ;
	else if (movex > 0) y_frame = 11;
	else if (movex < 0) y_frame = 8;
	else if (movex > 0) y_frame = 10;
	else                x_frame = 0 ; 

	//character body
	draw_sprite_part(sprite3,0,x_frame*frame_size,704 *frame_size,64,64, x,y);

	//charactre feet
	draw_sprite_part(sprite3,0,x_frame*frame_size,704 *frame_size,64,64, x,y); 

	//charactre feet
	draw_sprite_part(sprite3,0,x_frame*frame_size,704 *frame_size,64,64, x,y);

	//charactre feet
	draw_sprite_part(sprite3,0,x_frame*frame_size,704 *frame_size,64,64, x,y);

	//charactre feet
	draw_sprite_part(sprite3,0,x_frame*frame_size,704 *frame_size,64,64, x,y);

	// how the animation restest it's self 

	if (x_frame <anim_lenght - 1) {x_frame += 1;}
	 else                        {x_frame = 0;}
 
 


}
