clc;
close all;
clear all;

F0 = 2;
Fs = 1000;
pocet = 1000;

fi=-pi/2;
t=0:1/Fs:1;
square=cos(2*pi*t*0); % nuly
triangle=cos(2*pi*t*0);
for n = 1:pocet
   nsq = 2*n-1;
   square=square+(1/nsq)*cos(2*pi*t*nsq*F0+fi);
   triangle=triangle+(1/n)*cos(2*pi*t*n*F0+fi);
   subplot(2, 2, 1);
   plot(t,square);
   subplot(2, 2, 3);
   plot(t,triangle);

   %N = 512;
   N = 1000;
   F = 0:Fs/N:Fs/2-Fs/N;
   subplot(2, 2, 2);
   X = fft(square,N);
   %stem(abs(X(1:40)));
   stem(F(1:40), 1/(N/2)*abs(X(1:40)),'.');
   subplot(2, 2, 4);
   X = fft(triangle,N);
   stem(F(1:40), 1/(N/2)*abs(X(1:40)),'.');
   pause;
end