%Secant method
f=input('Enter your function');
x0=input('Enter first initial guess');
x1=input('Enter second guess');
e=input('Enter tolerance');
n=input('Enter number of iterations');
for i=1:n
    g=f(x0);
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    fprintf('P%d=%.6f\n',i,x2);
    d(i)=g;
    if abs(x2-x1)<e
        fprintf('The value of function is %f\n',abs(f(x2)))
        plot(d,1:i,'-.b')
        xlabel('Xi');
        ylabel('i ( Iteration)');
        title('Xi vs i graph for newton rapson  method')
        break
    end
    x0=x1;
    x1=x2;

end