clc;
close all;
clear all;
f=10;
T=1/f;
t=0:T/100:T;
Am=5;
y=Am*sin(2*pi*f*t);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Sinusoidal Waveform');
grid on;