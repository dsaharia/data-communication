% Assignment 1 Generation of some basic signals.
% x(t)= e -0.1t, for t= 0 to 40mS in steps of 0.1mS.

t = 0:0.1:40;
y = exp(-0.1 * t);
subplot(2,1,1);
plot(t, y);
title('Exponential Signal');
xlabel('Time[mS]');
ylabel('Amplitude');

% Unit Impulse signal δ(n)

n = -10:10;
del = zeros(1,21)
del(11) = 1;
subplot(2,1,2);
plot(n, del);
title('Impulse Signal');
xlabel('n');
ylabel('del(n)');