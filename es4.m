clc
clear all

f = @(x) x^3 + x^2 - 33*x + 63;
df = @(x) 3*x^2 + 2*x + 33;

nmax = 500;
x0 = 1;
tolx = 1e-12;
tolf = 1e-12;
m = 2;

[xNew, xkNew, itNew] = newton(f, df, x0, tolx, tolf, nmax);
[xNewMod, xkNewMod, itNewMod] = newtonModificato(f, df, m, x0, tolx, tolf, nmax);

xNew
xNewMod

pNew = stimaOrdine(xkNew(itNew-3:itNew))
pNewMod = stimaOrdine(xkNewMod(itNewMod-3:itNewMod))