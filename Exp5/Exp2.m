clear all
wm=2;wc=1.2*wm;
Ts=1; dt=0.1;
t1=-10:dt:10;
ft=sinc(t1/pi);
N=5000; k=-N:N;
W=2*pi*k/((2*N+1)*dt);
n=-100:100;nTs=n*Ts;
fst=sinc(nTs/pi);
Fsw=Ts*fst*exp(-j*nTs'*W);
 
subplot(221);
plot(t1,ft,':'),
hold on; 
stem(nTs,fst),
grid on; 
axis([-10,10,-0.4,1.1]); 
xlabel('Time(sec)'),ylabel('fs (t)'); 
title('Sa(t)的抽样信号');hold off;
 
subplot(222);
plot(W,abs(Fsw)),grid on;
axis([-20 20 0 4]);
xlabel('\omega'),ylabel('Fs(w) '); 
title('Sa(t)抽样信号频谱');
 
t=-10:dt:10;
f=fst*(Ts*(wc/pi))*sinc(wc/pi*(ones(length(nTs),1)*t-nTs'*ones(1,length(t))));
subplot(223);
plot(t,f),grid on;
axis([-10 10 -0.4 1.1]);xlabel('t'),ylabel('f(t) ');
title('重建信号'); 
 
error=abs(f-ft);
subplot(224);
plot(t,error),grid on 
xlabel('t'),ylabel('error(t)') ;
title('误差');
