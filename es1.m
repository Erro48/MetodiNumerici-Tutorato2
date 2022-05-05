clc
clear all

f = @(x) [2*x(1)-cos(x(2)); sin(x(1))+2*x(2)];
jac = @(x) [2 sin(x(2)); cos(x(1)) 2];

%f = @(x) [x(1)^2 + x(2)^2 - 9; x(1) + x(2) - 3];
%jac = @(x) [2*x(1) 2*x(2); 1 1];

int = 4;
xx = [-int:0.5:int];
yy = [-int:0.5:int];

[X, Y] = meshgrid(xx, yy);
Z1 = 2 * X - cos(Y);
Z2 = sin(X) + 2 * Y;
% Z1 = X.^2 + Y.^2 - 9;
% Z2 = X + Y - 3;

%figure
%mesh(X, Y, Z1);
%hold on
%contour(X, Y, Z1, [0,0], 'r-', 'linewidth', 2)

%figure
%mesh(X, Y, Z2);
%hold on
%contour(X, Y, Z2, [0,0], 'g-', 'linewidth', 2)

%figure
%contour(X, Y, Z1, [0,0], 'r-', 'linewidth', 2)
%hold on
%contour(X, Y, Z2, [0,0], 'g-', 'linewidth', 2)

x0 = [-1; 1];
tolx = 1e-10;
tolf = tolx;
nmax = 500;
[xc, Erc, itc] = cordeSys(f, jac, x0, tolx, tolf, nmax)
[xn, Ern, itn] = newtonSys(f, jac, x0, tolx, tolf, nmax)
[xs, Ers, its] = shamanskiiSys(f, jac, x0, tolx, tolf, nmax, 5)
[xs2, Ers2, its2] = shamanskiiSys(f, jac, x0, tolx, tolf, nmax, 10)


%plot3(xc(1), xc(2), f([xc(1), xc(2)]), 'ro')

%figure
semilogy(1:its, Ers, 'r-o', 1:itn, Ern, 'g-o', 1:its2, Ers2, 'k-o', 1:itc, Erc, 'b-o')
legend('Shamanskii n=5', 'Newton', 'Shamanskii n=10', 'Corde')
