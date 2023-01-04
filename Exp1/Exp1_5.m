clear all
clc

t = -2:0.01:2;
f = sawtooth(4*pi*t,0.5);
 
plot(t,f);
axis([-2,2,-2,2]);
title('周期三角波');
grid on;
