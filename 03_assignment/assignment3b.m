%Generate 256 samples of a sinusoidal signals of frequency 1KHz and 1.5KHz with a sampling frequency of 7KHz. 
%Plot the signals and its spectrum. 
%Now check that there will have the peak ancy 1KHz and 1.5 Kt frequeHz 
%whose magnitude of the sinusoidal components are 40dB and close to 42dB respectively
fs = 7000;
N = 256;
t = 0: 1/fs : N/fs - 1/fs;
f1 = 1000;
f2 = 1500;

s1 = sin(2 * pi * f1 * t);
s2 = sin(2 * pi * f2 * t);

z1 = fft(s1);
z2 = fft(s2);

z1_mag = 20 * log10(abs(z1));
z2_mag = 20 * log10(abs(z2));

fx = 0: N/2-1;
fx = (fx.*fs)/N;

subplot(2,2,1);
plot(s1);
title('Sine Signal with f = 1000Hz');
grid on;

subplot(2,2,2);
plot(s2);
title('Sine Signal with f = 1500Hz')
grid on;

subplot(2,2,3);
plot(fx,z1_mag(1:128));
title('FFT of s1');
grid on;

subplot(2,2,4);
plot(fx,z2_mag(1:128));
title('FFT of s2');
grid on;