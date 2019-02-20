fs = 8000;
t = 0: 1/fs: (128/fs);
f = 100;
n = 128;
x11 = sin(2 * pi * f * n * t);
x12 = (1/3) * sin(2 * pi * f * n * t);
x1 = x11 + x12;
plot(x1);