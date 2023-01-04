clc
clear all

t = sym('t');
ft = 2*heaviside(t-2)-1*heaviside(t-1-2)-1*heaviside(t-2-2);
fplot(ft,[-10,10]);
axis([-10,10,-5,5]);
grid on;
