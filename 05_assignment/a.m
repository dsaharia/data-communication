% Generate 128 samples of a sinusoidal signals say x1of frequency 120Hz. Take the amplitude A to be 1, phase to be 0 and sampling
% frequency to be 8KHz. Now add Gaussian noise to x1 and plot the same.
% Now remove the noise using ifft and plot the signal.(You need to remove the imaginary part after calling ifft by calling matlab function real(), 
% % which gives the real part of a complex number). 
% Check for the spectrum before and after removing the noise.
% audiorecorder
% recordblocking()
% getaudiodata()

N = 128;
fs = 8000;
f1 = 120;
t = 0: 1/fs : N/fs - 1/fs;
fx = 0: N/2-1;
fx = (fx.*fs)/N;

x1 = sin(2 * pi * t * f1);
noise = (randn(1, length(x1)));
x1_noise = x1 + noise;

subplot(3, 2, 1);
plot(x1);
title('Original Signal')

subplot(3, 2, 2);
plot(x1_noise);
title('Transmitted Signal with noise');
noise_fft = fft(noise);
x1_noise_fft = fft(x1_noise);

x1_noise_ifft = ifft(x1_noise_fft);
noise_ifft = ifft(noise_fft);
% noise_ifft_real = real(noise_ifft);
% x1_noise_ifft_real = real(x1_ifft);
original_signal = x1_noise_ifft - noise_ifft;
mag_noise_fft = abs(x1_noise_fft);
mag_original_fft = abs(fft(original_signal));

subplot(3, 2, 3);
plot(real(original_signal));
title('Retrived Signal');

subplot(3, 2, 4);
plot(fx, mag_noise_fft(1:length(fx)));
title('Spectrum with noise')

subplot(3, 2, 5);
plot(fx, mag_original_fft(1:length(fx)));
title('Spectrum without noise');