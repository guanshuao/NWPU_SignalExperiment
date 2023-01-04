clc
clear all

t = -5:0.01:5;
f_sign = sign(t);
f_u = 1/2*f_sign + 1/2;
f_sign2 = sign(t-2);
f_u2 = 1/2*f_sign2 + 1/2;
f_wave = f_u - f_u2;
plot(t,f_wave);
axis([-3,3,-2,2]);
title('脉冲信号');
