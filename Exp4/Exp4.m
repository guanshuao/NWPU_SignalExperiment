clear all;
d=0.01;w=-20:d:20; 
Hw=freqs([1,0],[1,1,100],w);
ang=angle(Hw)
 
subplot(2,1,1); 
plot(w,abs(Hw));title('幅频特性');
grid on; 
subplot(2,1,2);
plot(w,ang); title('相频特性');
grid on;
