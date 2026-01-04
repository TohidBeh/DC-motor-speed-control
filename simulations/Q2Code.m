clc
clearvars
close all

L=2.75e-6;
K=0.0274;
R=4;
J=3.2284e-5;
b=3.5077e-6;

simout=sim('Q2.slx');
plot(simout)