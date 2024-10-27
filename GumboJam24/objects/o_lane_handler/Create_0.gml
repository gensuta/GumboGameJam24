//01 left lane 23 mid lane 45 right lane

global.current_lane = 2; // we start in the middle lane!
prev_lane = global.current_lane;

//HANDLE TIMERS HERE
left_lane_event_timer = 500;
middle_lane_timer = 250;
right_lane_timer = 100;

started_timer = false;