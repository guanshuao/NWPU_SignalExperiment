clc
clear all

t = -2:0.01:2;
f_u1 = 0.5*sign(t) + 0.5;
f_u2 = 0.5*sign(-1*t)+0.5; 
y = f_u2.*(t+2)+f_u1.*(-1*t+2);
plot(t,y); axis([-3,3,0,3]);
title('三角波信号');
grid on;
