% Sine Signal generation with random noise.
N = 128;
fs = 8000;
t = 0: 1/fs : N/fs-1/fs;
f = 120;
x1 = sin(2 * pi * f * t); % Sine signal generation.

noise_gaussian = randn(1, length(x1)); % generating noise
noise_uniform = rand(1,length(x1));

gau_signal = x1 + noise_gaussian; % adding the noise
uni_signal = x1 + noise_uniform;


title('Different type of Noise');
subplot(1,2,1);
plot(gau_signal);
grid on;
title('Signal with Gaussian noise');
subplot(1,2,2);
plot(uni_signal);
grid on;
title('Signal with Uniform noise');