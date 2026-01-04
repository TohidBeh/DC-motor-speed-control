clc
clearvars
close all

j = 3.2284e-5;
b = 3.5077e-6;
k = 0.0274;
r = 4;
l = 2.75e-6;
v = 1;

Func = @(t, x)[ ...
    (1/l) * (-r * x(1) + v - k * x(3)); ...
    x(3); ...
    (1/j) * (k * x(1) - b * x(3)) ...
];

ts = 0 : 0.01 : 5;
x0 = [0; 0; 0];

% ODE
[t, x] = ode45(Func, ts, x0);

% current
figure(1)
plot(t, x(:,1), 'LineWidth', 2)
xlabel('Time [sec]')
ylabel('Amplitude')
title('Current')

% position
figure(2)
plot(t, x(:,2), 'LineWidth', 2)
xlabel('Time [sec]')
ylabel('Amplitude')
title('Position')

% omega
figure(3)
plot(t, x(:,3), 'LineWidth', 2)
xlabel('Time [sec]')
ylabel('Amplitude')
title('Angular Velocity')
