clear all
N=1024;
t_length=40;
T=t_length/N;
t=(0:N-1)*T-t_length/2;
x=heaviside((t*2+0.5))-heaviside((t*2-0.5));
plot(t,x)
w_length=2*pi/T;
W=w_length/N;
X=T*fft(x,N);
X=fftshift(X);
w=(0:N-1)*W-w_length/2;
abs=abs(X);
ang=angle(X);
subplot(411);
plot(t,x),title(' f(2t)时域图') , grid on 
subplot(412);
plot(w,X),title('f(2t)频域图') , grid on 
subplot(413);
plot(w, abs), title('f(2t)频谱图'), grid on
subplot(414) ;
plot(w, ang), title('f(2t)相位图'), grid on
