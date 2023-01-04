clc
clear all

delta=0.01;
t1=-1:delta:1;
f1=stepfun(t1,-1)-stepfun(t1,1);
t2=-3:delta:1; 
t3=0:delta:4; 
t4=-4:delta:0;
f21=t3.*(stepfun(t2,-3)-stepfun(t2,-2)); 
f22=stepfun(t2,-2)-stepfun(t2,0); 
f23=(-t4).*stepfun(t2,0);
f2=f21+f22+f23;
y=conv(f1,f2)*delta;
n=length(y);
t_y=(0:n-1)*delta-4;
plot(t_y,y),axis([-5,3,-0.1,2.5]),title('f1*f2')
