
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
plot(m_t.*c_t);
hold on;
plot(abs(m_t), 'r');
title('Transmitted Signal')