clc
clear all

delta=0.01 ;
t=-20:delta:20; 
w=-20:delta:20; 
Hw=freqs([-1,2],[1,2,3],w);
x=3+cos(2*t)+cos(5*t) ; 
subplot(211); plot(t,x), title('激励 '),grid on
Xw=delta*x*exp(-j*t'*w) ;
Yw=Hw.*Xw; y=delta*(Yw*exp(j*w'*t ))./ (2*pi) ;
subplot(212); plot(t,y),title('响应'),grid on;
