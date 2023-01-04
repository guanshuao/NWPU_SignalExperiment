clc
clear all;
eq1='D2y+4*Dy+4*y=Dx+3*x'; 
eq='x=exp(-t).*heaviside(t)';
cond='D2y(-0.01)=0,Dy(-0.01)=0,y(-0.01)=0'; 
ans1=dsolve(eq1,eq,cond);
subplot(3,1,1);
answer1=simplify(ans1.y); 
fplot(answer1);
grid on;title('零状态响应');
 
eq2='D2y+4*Dy+4*y=0'; 
cond='Dy(0)=1,y(0)=1'; 
answer2=dsolve(eq2,cond);
subplot(3,1,2); fplot(answer2);
grid on;
title('零输入响应');
 
answer3=answer1+answer2;
subplot(3,1,3);fplot(answer3); 
grid on ;
title('全响应');
