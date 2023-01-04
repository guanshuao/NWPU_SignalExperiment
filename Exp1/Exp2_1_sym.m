clear all
clc

t = sym('t');
f = (2-exp(-2*t))*heaviside(t);
fplot(f,[-5,20]);
axis([-5,20,-1,3]);
grid on;
