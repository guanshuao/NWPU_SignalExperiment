clc
clear all

t = sym('t');
f = cos(0.5*pi*t)*(heaviside(t)-heaviside(t-4));
fplot(f,[-1,6]);
axis([-1,6,-1.5,1.5]);
grid on;
