global.current_lane += turn

if(global.current_lane < 0)
{
global.current_lane = 0;
}
if(global.current_lane > 5)
{
global.current_lane = 5;
}