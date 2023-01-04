clc
clear all

t = -5:0.1:20;
f = (2-exp(-2*t)).*stepfun(t,0);
plot(t,f);
axis([-5,20,-1,3]);
grid on;
