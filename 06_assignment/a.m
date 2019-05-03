% Write a program to demonstrate the DSB-TC AM, i.e. commercial AM implementation for a baseband cosine signal of carrier frequency 15 Hz. 
% Take a carrier signal whose carrier frequency be 30Hz (i.e. fc for multiplier cosine signal in the formula) and amplitude is 8 samples per carrier. 
% Now consider the modulation index to be 0.1 and the carrier amplitude of the proposed AM signal be 1.
% Also consider the baseband and the carrier signal propagates at the rate of 1 milliseconds.
% Now plot the AM signal. Do remember to plot the carrier and the baseband original signal also.

fm = 15;
fc = 300;
A = 8;
Ka = 0.1;
t = 0:1/1000:1;
c_t = cos(2 * pi * t * fc);
m_t = cos(2 * pi * t * fm);
subplot(3, 1, 1);
plot(m_t);
title('Message Signal')

subplot(3, 1, 2);
plot(c_t);
title('Carrier Signal')

subplot(3, 1, 3);
t1 = (1 + Ka*m_t).*c_t;
plot(t1);
title('Transmitted Signal')