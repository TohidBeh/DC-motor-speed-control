clearvars
close all
clc

voltage=1;
assignin('base','voltage',voltage);
out=sim("Q4.slx");
plot(out);