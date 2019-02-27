% Plot the autocorrelation sequence of a sine wave with frequency 1 Hz, 
% sampling frequency of 200 Hz for 1024 samples. First plot the sinewave 
% (note: x-axis will be time and y-axis will be the amplitude). Now take autocorrelation of the signal with xcorr() and 
% plot the same (note: x-axis will be lags and y-axis will be autocorrelation).

f = 1;
fs = 200;
N = 1024;
t = 0: 1/fs :N/fs - 1/fs;

s = sin(2 * pi * f * t);
subplot(1,2,1);
plot(t,s);