//character
function Actor(_name,_emotes,_x,_y) constructor
{
	actor_name = _name;
	emotes = _emotes; // list of emotes bc i dont feel like doing a dictionary yet
	x_pos = _x;
	y_pos = _y;
	
	static change_name = function(_name)
	{
		actor_name = _name
	}
	
	static to_string = function()
    {
       
    }
	
	static draw = function()
	{
		draw_sprite(emotes[0],0,x_pos,y_pos);
	}
	
	static draw_emote = function(_emote_name)
	{
		draw_sprite(emotes[_emote_name],0,x_pos,y_pos);
	}
	
	//TODO: FIX THIS FUCKIN SCRIPT!!
	find_emote = function(_emote_name)
	{
		for( var i = 0; i < array_length(emotes);i++)
		{
			if(emotes[i].emote_name = _emote_name)
			{
				return emotes[i];
			}
		}
	}
}

function Emote(_name, _sprite) constructor
{
	emote_name = _name;
	emote_sprtie = _sprite;
}