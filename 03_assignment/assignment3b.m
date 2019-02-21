%Generate 256 samples of a sinusoidal signals of frequency 1KHz and 1.5KHz with a sampling frequency of 7KHz. 
%Plot the signals and its spectrum. 
%Now check that there will have the peak ancy 1KHz and 1.5 Kt frequeHz 
%whose magnitude of the sinusoidal components are 40dB and close to 42dB respectively
fs = 7000;
N = 256;
t = 0: 1/fs : 256/fs - 1/fs;
f1 = 1000;
f2 = 1500;

s1 = sin(2 * pi * f1 * t);
s2 = sin(2 * pi * f2 * t);

z1 = fft(s1);
z2 = fft(s1);

z1_mag = abs(z1);
z2_mag = abs(z2);

fx = 0: N/2-1;
fx = (fx*fs)/N;
hold a
grid on;

plot(fx,z1_mag(1:128));
plot(fx,z2_mag(1:128));
hold off;