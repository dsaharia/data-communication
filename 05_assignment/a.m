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
x1 = sin(2 * pi * t * f1);
noise = (randn(1, length(x1)));
x1_noise = x1 + noise;
subplot(2, 2, 1);
plot(x1_noise);
title('Transmitted Signal');
x1_ifft = ifft(x1_noise);
noise_ifft = ifft(noise);
noise_ifft_real = real(noise_ifft);
x1_ifft_real = real(x1_ifft);
plot(x1_ifft_real);