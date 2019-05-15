 %Generate 128 samples of three sinusoidal signals (A Sin(2?fnT +?)), say x1, x2 and x3 of frequency(f) 150Hz, 450Hz and 1500Hz respectively.
 %Take the amplitude (A) to be 1, phase (?) to be 0 and the sampling
 %frequency (1/T) to be 8KHz.
 
 n = 128;
 f1 = 150;
 f2 = 450;
 f3 = 1500;
 fs = 8000;
 t = 0: 1/fs: n/fs;
 sample = 0:128;
 
 % signal generations.
 subplot(2,3,1);
 x1 = sin(2 * pi * f1 * t);
 plot(x1);
 grid on;
 title('x1: Frequency = 150Hz');
 subplot(2,3,2);
 x2 = sin(2 * pi * f2 * t);
 plot(x2);
 grid on;
 title('x2: Frequency = 450Hz');
 subplot(2,3,3);
 x3 = sin(2 * pi * f3 * t);
 plot(x3);
 title('x3: Frequency = 1500Hz');
 grid on;
 
 % Delayed signal.
 x1d = sin(2 * pi * f1 * t);
 subplot(2,3,4);
 plot(sample-20,x1d);
 title('Signal delayed by 20 samples');
 grid on;
 
 % addition of x1 and x2.
 xadd = x1 + x2;
 subplot(2,3,5)
 plot(xadd);
 grid on;
 title('Signal for x1 + x2');
 
 % Multiplication of x1 and x3.
 xmult = x1 .* x3; % element wise multiplication must be done.
 subplot(2,3,6);
 plot(xmult);
 grid on;
 title('Signal for x1 * x3');
 
 % Amplify
 figure(2);
 subplot(1,2,1);
 x_amp = x1 * 2;
 plot(x_amp);
 title('Amplify by factor 2');
 % Attenuate
 subplot(1,2,2);
 x_att = x1 * 0.1;
 plot(x_att);
 title('Attenuate by factor 10');