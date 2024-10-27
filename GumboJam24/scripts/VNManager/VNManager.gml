//functions to be called
//TODO: PLEASE ADD REGIONS
function initialize_vn(){
// enabling typing from scribble
typist = scribble_typist(); // there is only ONE typist

global.snacks = 50;


global.start_nodes = ds_list_create()
global.current_node = -1

ds_list_add(global.start_nodes,"Riddle_Troll_Start","Pothole_Start",
"Prisoner_Dilemma_Start","Trolley_Problem_Start","Low_Snacks","Pop_Quiz","Are_We_There");

while (ds_list_size(global._party_members) < 3)
{
	var member = new Person()
	member.randomize_info();
	ds_list_add(global._party_members,member);
}

//TODO: INIT CUSTOM FUNCS HERE
init_custom_functions()

// This is how we start getting lines of text from Yarn!
ChatterboxLoadFromFile("main.yarn")
global.chatterbox = ChatterboxCreate() // there is only ONE chatterbox


// Editable variables
textbox_sprite = pointer_null
continue_sprite = pointer_null
show_continue_text = false
continue_text = "(Press Space)"
options_sprite = pointer_null
text_color = c_white

set_textbox_to_center() // by default
set_typing_speed(1)

horizontal_padding = 25;
vertical_padding = 20;

global.snacks_consumed = false;

}


//randomized node get!
function start_random_node()
{
	randomize()
	global.current_node = irandom(ds_list_size(global.start_nodes)-1)
	audio_stop_all()
	audio_play_sound(clowning_around,0,1);
	
	var node = ds_list_find_value(global.start_nodes,global.current_node)

	//below has requirements. if it doesn't meet them, remove and keep going EXCEPT for low on snacks
	if(node == "Trolley_Problem_Start")
	{

	}
	if(node == "Are_We_There")
	{

	}

	if(node == "Low_Snacks")
	{

	}

	run_node(node);
}






function run_node(_node_name)
{
	ChatterboxJump(global.chatterbox,_node_name)
}


function run_vn()
{
		if (!ChatterboxIsStopped(global.chatterbox))
		{
			global.snacks_consumed = false;
			if (ChatterboxIsWaiting(global.chatterbox))
			{
				if (keyboard_check_released(vk_space))
			    {
			        ChatterboxContinue(global.chatterbox);
			    }
			}
		}
		else
		{
			if(!global.snacks_consumed && ChatterboxGetCurrent(global.chatterbox) != "Intro")
			{
				audio_stop_all()
				audio_play_sound(easy_does_it_jonny_boyle_main_version_02_28_20,0,1)
				var val = ds_list_find_value(global.start_nodes,global.current_node);
				if(val != undefined)
				{
						ds_list_delete(global.start_nodes,global.current_node)
				}
				global.snacks -= ds_list_size(global._party_members) +1;
				global.snacks_consumed = true;
				global.progress+= 10;
			}
			
	
		}
}

function draw_vn()
{
	if (!ChatterboxIsStopped(global.chatterbox))
		{
			if(!ChatterboxIsWaiting(global.chatterbox))
			{
				//TODO: Make an if statement in case we want a sprite
				_display_continue_text()
			}
		
			    //Draw all content
			    var _i = 0;
			    repeat(ChatterboxGetContentCount(global.chatterbox))
			    {
			        var _string = ChatterboxGetContent(global.chatterbox, _i);
		
					_display_textbox();
					_display_text(_string);
			        ++_i;
			    }
			}
}
	




function set_typing_speed(_type_speed, _smoothing_ = 0)
{
	typist.in(_type_speed,_smoothing_);	
}


function set_textbox_sprite(_sprite)
{
	textbox_sprite = sprite;
}

function set_continue_sprite(_sprite)
{
	continue_sprite = _sprite
}

function toggle_continue_text(_b)
{
	show_continue_text = _b;
}

function set_continue_text(_text)
{
	continue_text = _text;
}

function set_options_sprite(_sprite)
{
	options_sprite = _sprite;
}

function set_textbox_pos(_x,_y)
{
	textbox_x_pos = _x;
	textbox_y_pos = _y;
}

function set_textbox_to_center()
{
	textbox_x_pos = room_width/2 - 300;
	textbox_y_pos = room_height/2 + room_height/4; // trying to make it lower center haha
}


function set_horizontal_text_padding(_padding)
{
	horizontal_padding = _padding;
}

function set_vertical_text_padding(_padding)
{
	vertical_padding = _padding;
}


// private not to be called


function _display_textbox()
{
	if(textbox_sprite == pointer_null)
	{
		draw_set_color(c_gray)
		draw_rectangle(textbox_x_pos,textbox_y_pos,textbox_x_pos+600,textbox_y_pos+100,false)
	}
	
	else
	{
		draw_sprite(textbox_sprite,0,textbox_x_pos,textbox_y_pos);
	}
}


function _display_text(_text)
{
	var _x = textbox_x_pos + horizontal_padding;
	var _y = textbox_y_pos + vertical_padding;

	draw_set_color(text_color)	
	scribble(_text).wrap(500).draw(_x,_y,typist)
	
}



function _display_continue_text()
{
	if (ChatterboxIsWaiting(global.chatterbox))
    {
       //display image or txt at the bottom right of the textbox
    }
	else // display options
	{
		_display_options();
	} 
}


function _display_continue_sprite()
{


}

function _display_options()
{
	var _x = textbox_x_pos + 100 + horizontal_padding;
	var _y = textbox_y_pos + vertical_padding -200;
	

	if(options_sprite == pointer_null)
	{
		//Draw all options
        var _i = 0;
        repeat(ChatterboxGetOptionCount(global.chatterbox))
        {
			
			var _new_option = instance_create_layer(0,0,"Instances",o_option);
			var _string = ChatterboxGetOption(global.chatterbox, _i);
			
			with(_new_option)
			{
				__x = _x;
				__y = _y;
				__i = _i;
				_color = c_gray;
				_text = _string
				//_text_color = text_color // plz fix
			}
			
			

			
            _y += 50;
            ++_i;
        }
		
	}
	
	else
	{
		draw_sprite(textbox_sprite,0,textbox_x_pos,textbox_y_pos+50);
	}

}

function clear_options()
{
 instance_destroy(o_option);
}