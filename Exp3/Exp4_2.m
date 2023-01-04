clear all
detla=0.007;
t=-10:detla:10;
w=-20:detla:20;
a=0.5;
t1=a*t
ft1=heaviside((t1+0.5))-heaviside((t1-0.5));
Fw1=detla*ft1*exp(-j*((t)')*w);
abs1=abs(Fw1);
ang1=angle(Fw1);
b=2;
t2=b*t
ft2=heaviside((t2+0.5))-heaviside((t2-0.5));
Fw2=detla*ft2*exp(-j*((t)') *w);
abs2=abs(Fw2);
ang2=angle(Fw2);

subplot(421);
plot(t,ft1),title(' f(t/2)时域图') , grid on 
subplot(423) ;
plot(w, Fw1), title('f(t/2)频域图') , grid on 
subplot(425);
plot(w, abs1), title('f(t/2)频谱图'), grid on
subplot(427) ;
plot(w, ang1), title('f(t/2)相位图'), grid on
subplot(422);
plot(t,ft2),title('f(2*t)时域图'), grid on
subplot(424);
plot(w,Fw2),title('f(2*t)频域图') , axis([-20,20,-5,5]) , grid on
subplot(426);
plot (w, abs2), title('f(2*t)频谱图'), axis([-20,20,0,5]), grid on
subplot(428);
plot (w, ang2), title('f(2*t)相位图'),grid on;
