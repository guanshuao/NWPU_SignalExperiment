sys=tf ([4],[1,12]);
t=0:0.001:1.2;
h=impulse(sys,t);
subplot(311)
plot (t, h) ;title('冲激响应h(t)')
grid on;
 
f=12*stepfun(t,0);
y1=lsim(sys,f,t);
subplot(312);
plot(t,y1);title('零状态响应');
 
y2=4*((1-exp(-12*t))).*stepfun(t,0);
subplot(313);
plot(t,y2);title('零状态响应(用于验证)');
grid on;
