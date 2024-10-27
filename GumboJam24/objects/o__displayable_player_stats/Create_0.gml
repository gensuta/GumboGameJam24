starting_x = room_width/2 - 620;
starting_y = room_height/2 - 340;
vertical_padding = 30;


global.player = new Person();

global.player.randomize_info()
global.player.languages_learned = irandom(29); // MUST ALWAYS STAY AT/BELOW 29
my_info = global.player