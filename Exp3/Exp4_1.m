clear all 
detla=0.003;
t=-10:detla:10;
w=-20:detla:20;
ft=heaviside((t+0.5))-heaviside((t-0.5))
Fw=detla*ft*exp(-j*t'*w);
abs=abs(Fw);
ang=angle(Fw);

subplot(411);
plot(t,ft),axis([-1.5,1.5,-0.2,1.2]),title(' f(t)时域图') , grid on ;
subplot(412);
plot(w, Fw),axis([-20,20,-0.5,1.5]),title('f(t)频域图') , grid on ;
subplot(413);
plot(w, abs),axis([-20,20,-0.5,1.5]),title('f(t)频谱图'), grid on;
subplot(414) ;
plot(w, ang),axis([-20,20,-5,5]),title('f(t)相位图'), grid on;
