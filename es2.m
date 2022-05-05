clc
clear all

f = @(x) x.^3 - 8;
Df = @(x) 3*x.^2;

x0 = 1;
tolx = 1e-10;
tolf = tolx;
nmax = 10;
[xn, xkn, itn] = newton(f, Df, x0, tolx, tolf, nmax)

x1 = 3;
[xs, xks, its] = secanti(f, x0, x1, tolx, tolf, nmax)

plot(1:itn, xkn, 'ro-', 1:its, xks, 'go-')
legend('Newton', 'Secanti')


