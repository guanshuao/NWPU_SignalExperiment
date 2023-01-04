clc

clear all
delta=0.01;
t=-1:delta:5;
f1=(t-1).*(stepfun(t,1)-stepfun(t,3));
f2=stepfun(t,-1)-2*stepfun(t,2);
y=conv(f1,f2)*delta;
n=length(y);
t_y=(0:n-1)*delta;
plot(t_y,y);
axis([0,12,-3,3]),title('f1*f2')
