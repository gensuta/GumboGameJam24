//functions to be called
//TODO: PLEASE ADD REGIONS
function initialize_vn(){
// enabling typing from scribble
typist = scribble_typist(); // there is only ONE typist

global.snacks = 50;
global._party_members = ds_list_create();
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
}

function run_node(_node_name)
{
	ChatterboxJump(global.chatterbox,_node_name)
}


function run_vn()
{
		if (!ChatterboxIsStopped(global.chatterbox))
		{
			if (ChatterboxIsWaiting(global.chatterbox))
			{
				if (keyboard_check_released(vk_space))
			    {
			        ChatterboxContinue(global.chatterbox);
			    }
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
	textbox_x_pos = room_width/2 - 200;
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
		draw_rectangle(textbox_x_pos,textbox_y_pos,textbox_x_pos+500,textbox_y_pos+100,false)
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
	var _x = textbox_x_pos + horizontal_padding;
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