clc;clear all
%Question 1 using approx root
f=input('Enter the equation');
h=10^-8;
x0=input('Enter initial guess');
e=input('Enter tolerance');
n=input('Enter the number of iterations');

for k=1:n
    df=(f(x0+h)-f(x0))./h;
    xn=x0-(f(x0)/df);
    x0=xn;
    d(k)=xn;
    fprintf('P%d=%.6f\n',k,xn);
    if f(xn)<e
        fprintf('The value of function is %f\n',abs(f(xn)))
        plot(d,1:k,'-.b')
        xlabel('Xk');
        ylabel('k ( Iteration)');
        title('Xk vs K graph for newton rapson  method')
        break
    end 
    
end