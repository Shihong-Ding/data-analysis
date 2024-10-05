% I
f = @(x) x*sin(3*x)-exp(x);

df = @(x) 3*x*cos(3*x)+sin(3*x)-exp(x);

%Newton-Raphson method
x1 = -1.6;
x_n = x1;
A1 = [];
count_newton = 0;
while abs(f(x_n)) > 1e-6
    A1 = [A1; x_n];
    x_n = x_n - (f(x_n)/df(x_n));
    count_newton = count_newton+1;
end
count_newton = count_newton+1;
A1 = [A1; x_n]

%Bisection
xa = -0.7;
xb = -0.4;
xmid = (xa+xb)/2;
count = 1;
A2 = [];
while abs(f(xmid)) > 1e-6
    A2 = [A2; xmid];
    if f(xmid) < 0
        xb = xmid;
    else
        xa = xmid;
    end
    xmid = (xa+xb)/2;
    count = count+1;
end
A2 = [A2; xmid]
A3 = [count_newton, count]
%% II
A = [1,2;-1,1];
B = [2,0;0,2];
C = [2,0,-3;0,0,-1];
D = [1,2;2,3;-1,0];
x = [1;0];
y = [0;1];
z = [1;2;-1];
A4 = A+B;
A5 = 3*x-4*y;
A6 = A*x;
A7 = B*(x-y);
A8 = D*x;
A9 = D*y+z;
A10 = A*B;
A11 = B*C;
A12 = C*D;