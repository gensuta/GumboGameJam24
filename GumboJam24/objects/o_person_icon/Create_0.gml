show_stats = false
my_info = pointer_null

is_changing_name = false
is_changing_pronouns = false

image_xscale =1.5;
image_yscale =1.5;


starting_x = x + 80;
starting_y = y - 10;

pop_up_width = 180;
pop_up_height = 125;

current_stats_shown = 0;

my_num = irandom(5)
randomize();


//RANDOMIZED SPRITE HANDLING! STORE AFTER
chins = [Chin1,Chin2,Chin3];
clothes = [clothes1,clothes2];
ears = [ear1,ear2,ear3,ear4,ear5,ear6];
eyes = [eyes1,eyes2,eyes3];
hair = [hair1,hair2,hair3];
mouths = [mouth1,mouth2,mouth3];
noses = [nose1,nose2,nose3];

my_chin = chins[irandom(array_length(chins)-1)];
my_clothes = clothes[irandom(array_length(clothes)-1)];
my_ears = ears[irandom(array_length(ears)-1)];
my_eyes = eyes[irandom(array_length(eyes)-1)];
my_hair = hair[irandom(array_length(hair)-1)];
my_mouths = mouths[irandom(array_length(mouths)-1)];
my_noses = noses[irandom(array_length(noses)-1)];