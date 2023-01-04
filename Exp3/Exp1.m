clc

clear all
delta=0.03;
t=-10:delta:10;
w=-10:delta:10;
ft1=sin(2*pi*(t-1))./(pi*(t-1));
Fw=delta*ft1*exp(-j*t'*w);
ang=angle(Fw);
subplot(211);
plot(w, abs(Fw)),axis([-10,10,-0.5,1.5]),title('幅度谱'),grid on
subplot(212);
plot(w, ang),axis([-10,10,-4,4]), title('相位谱'),grid on
