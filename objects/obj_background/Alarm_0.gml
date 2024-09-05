/// @description Insert description here
// You can write your code in this editor

offset.x += moving_speed.x;
offset.y += moving_speed.y;
if (offset.x > marg.width) offset.x -= marg.width;
if (offset.y > marg.height) offset.y -= marg.height;

alarm_set(0, delay);