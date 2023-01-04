clear all;
x1=-3:0.1:0; 
y1=-15:0.1:15;
[x,y]=meshgrid(x1,y1);
s=x+j*y;
FS=abs(s./(s.^2+4*pi*pi)-s.*exp(-4*s)./(s.^2+4*pi *pi));
mesh(x,y,FS); 
surf(x,y,FS);
zlim([0 6]);
colormap(hsv);
figure 
dt=0.03;
t=-15:dt:15;
f=cos(2*pi*t).*(heaviside(t)-heaviside(t-4));
w=-15:dt:15;
F=dt*f*exp(-1*j*t'*w);
plot(w,abs(F));grid on;
