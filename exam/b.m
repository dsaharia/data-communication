[y , fs] = audioread('music.wav');
time  = (1 : length(y)) / fs;  % get the time axis wrt audio file
subplot(3,1,1);
plot(time, y(:,1));
title('original signal');
sample = 1:length(y);

for i=length(y):-1:51
    y(i) = y(i-50);
end

for i=1:1:50
    y(i) = 0;
end
subplot(3,1,2);
plot(time,y(:,1));
title('Delayed signal');

power = 20*log10(abs(fft(y)));
subplot(3,1,3);
plot(power);
title('Power Spectrum')