%question 3 using newton raphson method
% clc
% clear all
 
f = @(x)(x^5 +0.25*(x^3) - 3*(x^4) + 0.5*(x^2) -(15*x)+ 50); 
df = @(x)(5*(x^4) +1.25*(x^2) -12*(x^3) + x - 15 );
ddf = @(x)(20*(x^3) +2.5*(x^2) - 36*(x^2) +1);
x0=100;
n=25;

 for k=1:n
    xn=x0-2*(f(x0)/df(x0));
    x0=xn;
    d(k)=xn;
    fprintf('P%d=%.6f\n',k,xn);
    fprintf('The value of function is %f\n',abs(f(xn)))

 end
    plot(1:n,d,'-.b')
    xlabel('k');
    ylabel('Xk');
    title('Xk vs K graph ')
    hold on
