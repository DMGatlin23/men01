/// @description Insert description here
// You can write your code in this editor
movecam = keyboard_check(ord("c"));

if(movecam)  {
var input_left   = keyboard_check(vk_left);
var input_right  = keyboard_check(vk_right);
var input_up     = keyboard_check(vk_up);
var input_down   = keyboard_check(vk_down);
x+= (input_right - input_left)*6;
y += (input_down - input_up)*6
}else{

x = clamp (x, following.x-h_border,following.x+h_border);
y = clamp (y, following. y-h_border,following. y+h_border);
}