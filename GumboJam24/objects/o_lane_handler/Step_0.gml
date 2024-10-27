if(!started_timer)
{
	if(ChatterboxIsStopped(global.chatterbox))
	{
		if(global.current_lane <2)
		{
			alarm[0] = left_lane_event_timer
		}
		else if(global.current_lane >3)
		{
			alarm[0] = right_lane_timer;
		}
		else
		{
			alarm[0] = middle_lane_timer;
		}
		started_timer = true;
	}
}

if(prev_lane != global.chatterbox) // if we switch lanes. reset the timer
{
	started_timer = false
	prev_lane = global.chatterbox
}