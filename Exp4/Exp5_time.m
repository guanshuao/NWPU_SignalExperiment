clc
clear all;
t=0:0.01:5; 
sys=tf([5],[1,5]);
f=stepfun(t,0)-stepfun(t,1);
y=lsim(sys,f,t);
plot(t,y);
axis([-1,3,-0.1,1.2]);
title('时域分析法所得波形');grid on;
