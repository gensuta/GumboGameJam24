if (ChatterboxIsStopped(global.chatterbox))
{
	draw_self()
	var str = turn < 0 ? "merge left" : "merge right";
	draw_text(x,y,str);
}

