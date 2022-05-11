clc
clear all

y0 = input('Inserisci y0 compreso tra [-1, 1]: ');

f = @(x) sin(x) - y0;
tolx = 1e-10;
a = -pi/2;
b = pi/2;

[x, xk, it] = bisezione(f, a, b, tolx)