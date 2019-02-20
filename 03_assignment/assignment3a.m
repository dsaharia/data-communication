% Sine Signal generation with random noise.

fs = 8000;
t = 0: 1/fs : 128/fs-1/fs;
f = 120;
x1 = sin(2 * pi * f * t);

noise = randn(1, 128);
x = x1 + noise;
plot(x);