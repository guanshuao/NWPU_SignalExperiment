clear all;
syms s; 
F1=(4/((s+2)*(s+1)*(s+2)))+((3*s+13)/((s+1)*(s+2)));
f1=ilaplace(F1); 
subplot(313); ezplot(f1);title('全响应');grid on;
F2=4/((s+2)*(s+1)*(s+2)); f2=ilaplace(F2); subplot(311); ezplot(f2);title('零状态响应');grid on;
F3=(3*s+13)/((s+1)*(s+2)); f3=ilaplace(F3); subplot(312); ezplot(f3);title('零输入响应');grid on;
