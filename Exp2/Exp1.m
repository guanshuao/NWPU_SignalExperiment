clc
clear all

clear all
delta=0.01 ;
t=-1:delta:1;
f1=stepfun(t, 0)-stepfun(t,1);
f2=stepfun(t,-1)-stepfun(t,0);
y1=conv(f1,f1)*delta;
n=length(y1) ;
subplot(311);
plot((0:n-1)*delta-2, y1);
axis([-3,3,-0.5,1.5]);
title('g1(t)');
subplot(312);
y2=conv(f2,f2)*delta;
n=length(y2);
plot((0:n-1)*delta-2,y2);
axis([-3,3,-0.5,1.5]);
title('g2(t)');
subplot(313);
y3=conv(f1,f2)*delta;
n=length(y1) ;
plot((0:n-1)*delta-2,y3);
axis([-3,3,-0.5,1.5]);
title('g3(t)');
