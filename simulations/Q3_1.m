clc
clearvars
close all

K = 0.0274;
J = 3.2284e-5;
B = 3.5077e-6; 
L = 2.75e-6;
Ra = 4;
Pos = tf([K] , [J*L J*Ra+L*B K^2+Ra*B 0]);
Omga = tf([K] , [J*L J*Ra+L*B K^2+Ra*B]);

figure()
step(Pos,Omga)
axis([0 5 0 500])