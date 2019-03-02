% Plot the autocorrelation sequence of a sine wave with frequency 1 Hz, 
% sampling frequency of 200 Hz for 1024 samples. First plot the sinewave 
% (note: x-axis will be time and y-axis will be the amplitude). Now take autocorrelation of the signal with xcorr() and 
% plot the same (note: x-axis will be lags and y-axis will be autocorrelation).
close all;
f = 1;
fs = 200;
N = 1024;
t = 0: 1/fs :N/fs - 1/fs;

s = sin(2 * pi * f * t);
subplot(2,1,1);
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('Sine signal with f = 1Hz');

[corr_seq, lags] = xcorr(s);
subplot(2,1,2);
plot(lags, corr_seq);
xlabel('Lags');
ylabel('Autocorrelation');
title('Autocorrelation of Sine signal with f = 1Hz');