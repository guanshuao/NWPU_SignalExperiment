clc
clear all
delta=0.01 ;
t=-10: delta: 10;
w=-10:delta:10;
Fw2=(-1*j*2*w)./(16+w.*w) ;
ft2=delta*(Fw2*exp(-j*w'*t))./(2*pi);plot(t,ft2);
title('时域信号'), grid on
