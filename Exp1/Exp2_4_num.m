clc
clear all

t = -10:0.1:10;
f = (2/3)*t.*stepfun(t,-2);
plot(t,f);
axis([-10,10,-10,10]);
grid on;
