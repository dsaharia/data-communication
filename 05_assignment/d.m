% Read 1000 signal samples from a music file using the appropriate read function in matlab and compute the spectrum using the fftfunction. 
% Obtain the plots of the signal and the spectrum and determine the 3 dB bandwidth of the signal.
% Repeat the above for 5(five) different music files and compute the average bandwidth.

[y, fs] = audioread('music.wav', [1, 1000]); % for 1000 samples only
time  = (1 : length(y)) / fs;  % get the time axis wrt audio file
subplot(2,1,1);
plot(time, y);
title('original music signal');

y_fft = fft(y);
y_fft_real = abs(y_fft);

subplot(2,1,2);
plot(time, y_fft_real);
title('Power Spectrum of the signal');