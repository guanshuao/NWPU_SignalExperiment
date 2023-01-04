clc
clear all

t = -5:0.01:5;
f = square(0.5*pi*t,50);
plot(t,f);
axis([-5,5,-2,2]);
title('周期脉冲信号');
grid on;
