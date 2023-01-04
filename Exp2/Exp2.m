clc
clear all

clear all
delta=0.01;
t1=0:delta:2;
f1=stepfun(t1,0);
t2=0:delta:3;
f2=stepfun(t2,1)-stepfun(t2,2)+stepfun(t2,0);
y=conv(f1,f2)*delta;
n=length(y);
t_y=(0:n-1)*delta;
plot(t_y,y),axis([-0.5,5.5,-0.1,4.0]),title('f1*f2')
