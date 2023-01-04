clc
clear all
delta=0.005;
t=-2:delta:2;
w=-12:delta:12;
ft1=(stepfun(t,-2)-stepfun(t,-1)).*(t+2)+(stepfun(t,-1)-stepfun(t,1))+(stepfun(t,1)-stepfun(t,2)).*(-t+2);
F1=delta*ft1*exp(-j*t'*w);
subplot(211)
plot(w,abs(F1));
axis([-12,12,-0.5,3.5]) ;
title('幅度谱') 
 
f=(1/(2*pi))*delta*F1*exp(j*w'*t);
subplot(212)
plot(t,f,t,ft1,'r');
axis([-2.5,2.5,-0.5,1.5]);
title('还原信号和原信号对比图')
