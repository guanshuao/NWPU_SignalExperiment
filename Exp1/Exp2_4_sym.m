clc 
clear all

t = sym('t');
f = (2/3)*t*heaviside(t+2);
fplot(f,[-10,10]);
axis([-10,10,-10,10]);
grid on;
