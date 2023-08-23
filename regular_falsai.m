function regular_falsai(f,x0,xu,n)
p=0;
for i=1:n
    g=f(x0);
    c=(x0.*f(xu)-xu.*f(x0))/(f(xu)-f(x0));
    j(i)=c;
    d(i)=g;
    if abs(c-xu) < 10^-6
        p=1;
        k=i;
        
        break;
    else
        if f(x0)*f(c)<0
           xu=c;
           
        else
            x0=c;
        end
    end
end

if p==1
    fprintf('Solution is %f at iteration %i\n',c,k)
    z=f(c);
    fprintf('The value of function is %f\n',abs(z))
    plot(d(1:k),1:k,'-.r')
    xlabel('Xk');
    ylabel('k');
    title('Xk vs K graph for regular falsai method')
else
    fprintf('No convergent solution exist in the given number iteration\n')
end
end
