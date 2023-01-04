clear all
clc


t = sym('t');
a = 0.5;
%a = 2;
ft = 2*heaviside(a*t)-1*heaviside(a*t-1)-1*heaviside(a*t-2);
fplot(ft,[-10,10]);
axis([-10,10,-5,5]);
grid on;
