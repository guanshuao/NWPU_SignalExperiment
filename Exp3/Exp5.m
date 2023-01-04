clear all
delta=0.01 ;
q=2;n=(-2*q):1:(2*q);
p=3;
w=2*pi/2;
t=(-1*p):delta:(1*p);
m=10/pi;
f1=0.5*sawtooth(pi*(t-1),0.5)+0.5;
Fn=delta/(2*p)*(f1*exp (-j*w*t'*n)) ;
f2=Fn*exp(j*w*n'*t);
abs=abs(Fn)

subplot(311)
plot(t,f1),title('原图像') , axis([-p,p,-0.2,1.2]), grid on
subplot(313)
plot(t, f2,t,f1,'r'),title('合成对比图'), axis([-p, p,-0.2,1.2]), grid on
subplot (312);
stem(n, abs), title('信号幅度谱'),grid on
