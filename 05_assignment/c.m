% Capture 1000 samples of your voice using the "audiorecoder" function in matlab with a sampling rate of 8000 samples/second and 8 bits per sample. 
% Compute the spectrum of the signal using the "fft" function. 
% Get plots of the signal and the spectrum and determine the 3 dB bandwidth (effective BW) of the signal.
% Repeat the above for 5(five) different voice samples of yours and compute the average of the bandwidths.
fs = 8000;
nbits = 16; % number of bits per sample
nchannels = 2;

rec_object = audiorecorder(fs, nbits, nchannels);
disp('Start Speaking');
recordblocking(rec_object, 3);
disp('Stop Speaking');
% play(rec_object);
% transfer record data to audio data
y = getaudiodata(rec_object);
time = (1:length(y)) / fs;
subplot(2, 1, 1);
plot(time, y);
title('Audio signal');

y_fft = fft(y);
y_fft_real = abs(y_fft);
subplot(2, 1, 2);
plot(y_fft_real);