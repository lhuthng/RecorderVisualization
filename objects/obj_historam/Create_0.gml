/// @description Insert description here
// You can write your code in this editor

time_rate = 30;
delay_time = 1500;
total_time = 0;
start_time = 0;
last_time = 0;
pause = true;

sequence = [];
times = [];

first_note = -1;
playing_note = -1;

time_step = 0;

base_time = time_rate * x;
full_time = base_time;
target_time = full_time;


prior_time = 200;

depth = -3;

