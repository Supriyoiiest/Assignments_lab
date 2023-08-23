function bisection(f,x0,xu,n)
p=0;
while(f(x0)*f(xu)>0)
    disp('Entered input is not correct');
    break
end
for i=1:n
    g=f(x0);''
    c=(x0+xu)/2;
     j(i)=c;
     d(i)=g;
    if abs(c-xu) < 10^-4
        p=1;
        k=i;
        break
    else
        if(f(c)*f(xu)<0)
            x0=c;
        else
            xu=c;
        end
    end
end
if p==1
    fprintf('Solution is %f at iteration %i\n',c,k)
    z=f(c);
    fprintf('The value of function is %f\n',abs(z))
    plot(d,1:k,'-.b')
    xlabel('Xk');
    ylabel('k ( Iteration)');
    title('Xk vs K graph for bisection method')

else
    fprintf('No convergent solution exist in the given number iteration\n')
end
end