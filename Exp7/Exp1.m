clc
clear all

N=100;
t_length=40;
T=t_length/N;
t=(0:N-1)*T-t_length/2;
x=(sin(2*pi*(t-1)))./(pi*(t-1));
plot(t,x)
w_length=2*pi/T;
W=w_length/N;
X=T*fft(x,N);
X=fftshift(X);
w=(0:N-1)*W-w_length/2;
plot(w,abs(X));axis([-10,10,-0.5,1.5]);
title('FFT幅度谱');grid on;
