%  Modify the program of (a) to add white noise (Gaussian noise). 
%  Now estimate and plot the cross-correlation of both the signals (sinewave and the noisy signal). 
%  Now observe the output to figure out the cross-correlated behavior of the two signals. 
%  [Hint: use command xcorr(signal1, signal2)]

f = 1;
fs = 200;
N = 1024;
t = 0: 1/fs :N/fs - 1/fs;

s = sin(2 * pi * f * t);
subplot(3,1,1);
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('Sine signal with f = 1Hz');

noise_gaussian = randn(1, length(s));
gau_signal = s + noise_gaussian;
subplot(3,1,2)
plot(t,gau_signal);
xlabel('Time');
ylabel('Amplitude');
title('Noisy Sine signal with f = 1Hz');

[corr_seq, lags] = xcorr(s,gau_signal);
subplot(3,1,3);
plot(lags, corr_seq);
xlabel('Lags');
ylabel('correlation');
title('Correlation of noisy Sine signal with f = 1Hz');