clc
clear all

t = sym('t');
ft = abs(2*exp(1i*(t+pi/6)));
fplot(ft,[-10,10]);
axis([-10,10,-5,5]);
grid on;
