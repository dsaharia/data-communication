%  Now estimate the frequency contents of the sinewave and the noisy signal using fft. 
%  Here you need to do the following (i) take 256 point fft of the signals 
%  [Hint: use command fft(signal,n), n is the points to be taken] 
%  (ii) take the amplitude spectra of the 256 points of the signal 
%  [Hint: use abs() command] and plot (iii) take the discretised plot of the amplitudes [Hint: use stem() command] and plot.

f = 1;
fs = 200;
N = 1024;
t = 0: 1/fs :N/fs - 1/fs;

s = sin(2 * pi * f * t);
subplot(5,1,1);
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('Sine signal with f = 1Hz');

noise_gaussian = randn(1, length(s));
gau_signal = s + noise_gaussian;
subplot(5,1,2)
plot(t,gau_signal);
xlabel('Time');
ylabel('Amplitude');
title('Noisy Sine signal with f = 1Hz');

s_fft = fft(s,256);
s_mag = abs(s_fft);
final_signal_fft = fft(gau_signal, 256);
final_signal_mag = abs(final_signal_fft);
noisy_fft = fft(noise_gaussian, 256);

plot(s_mag);
subplot(5,1,3)
stem(s_mag);
subplot(5,1,4);
stem(final_signal_mag);
subplot(5, 1, 5);
plot(final_signal_mag);