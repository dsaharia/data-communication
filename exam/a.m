fs = 8000;
N = 64;
t = 0: 1/fs : N/fs - 1/fs;
f1 = 450;
f2 = 1000;
A = 1.5;

s1 = A * sin(2 * pi * f1 * t + (pi/6));
s2 = A * cos(2 * pi * f2 * t + (0.610865));
added_sig = s1 + s2;

subplot(5,1,1);
plot(s1);
title('Signal 1');

subplot(5,1,2);
plot(s2);
title('Signal 2');

subplot(5,1,3);
plot(added_sig);
title('Added Signal');

noise = rand(1,length(added_sig));

for i=1:1:10
    noise(i) = 0;
end

noise_sig = noise + added_sig;
subplot(5,1,4);
plot(noise_sig);
title('Noise added Signal');

fx = 0:N-1;
fx = (fx.*fs)/N;
% removing the noise
noise_ifft = ifft(real(fft(noise)));
noise_sig_ifft = ifft(real(fft(noise_sig)));
retr_sig = noise_sig_ifft - noise_ifft;
subplot(5,1,5);
plot(retr_sig);
title('Power Spectrum of retrieved Signal');