clear all：
t=0:0.01:10;
delta=0.01;
w=-10:0.01:10; 
Hw=freqs([1,0],[1,1.],w); 
x=cos(2*t) ;
subplot(211); 
plot(t,x), title('激励 '),grid on;
 
Xw=delta*x*exp(-j*t'*w) ;
Yw=Hw.*Xw; 
y=delta*(Yw*exp(j*w'*t ))./ (2*pi) ; 
subplot(212); plot(t,y),title('响应'),grid on;
