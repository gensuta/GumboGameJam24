/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space))
{

global.player.randomize_info()
global.player.languages_learned = irandom(29); // MUST ALWAYS STAY AT/BELOW 29
}