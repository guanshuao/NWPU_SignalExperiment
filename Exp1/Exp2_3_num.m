clc
clear all

t = -2:0.1:10;
f = exp(t).*cos(t).*stepfun(t,0);
plot(t,f);
%axis([-2,10,-100,900]);
grid on;
