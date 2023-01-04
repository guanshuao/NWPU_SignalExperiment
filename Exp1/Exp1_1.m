clc
clear all

t = -2*pi:0.01:2*pi;
f_sinc = sinc(t);
plot(t,f_sinc);
title('抽样信号');
axis([-10,10,-1.5,1.5]);
