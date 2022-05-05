clc
clear all

format long e

f = @(x) x.^3 - 8;
Df = @(x) 3*x.^2;

x0 = 1;
tolx = 1e-10;
tolf = tolx;
nmax = 100;
[xn, xkn, itn] = newton(f, Df, x0, tolx, tolf, nmax)

x1 = 3;
[xs, xks, its] = secanti(f, x0, x1, tolx, tolf, nmax)

a = 0;
b = 3;
[xb, xkb, itb] = bisezione(f, a, b, tolx)

plot(1:itn, xkn, 'ro-', 1:its, xks, 'go-', 1:itb, xkb, 'bo-')
legend('Newton', 'Secanti', 'Bisezione')


