%  Read a WINDOWS sound file(i.e.media file) (say "start.wav") using the "wavread()" function in matlab and obtain the plot calculating 
%  the time vector from the duration of the sound wave (you can calculate the time vector 
%  as "time=(1:length(signal))/sampling frequency" for 0 to 1 scale).Now plot the power spectrum of the signal.

[y, fs] = audioread('the_force.wav');
plot(y);