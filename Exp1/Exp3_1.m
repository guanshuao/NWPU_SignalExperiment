clc
clear all

t = sym('t');
ft = 2*heaviside(-t)-1*heaviside(-t-1)-1*heaviside(-t-2);
fplot(ft,[-3,3]);
axis([-3,3,-3,3]);
grid on;
