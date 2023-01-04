clc 
clear all

t = -1:0.1:6;
f = cos(0.5*pi*t).*(stepfun(t,0)-stepfun(t,4));
plot(t,f);
axis([-1,6,-1.5,1.5]);
grid on;
