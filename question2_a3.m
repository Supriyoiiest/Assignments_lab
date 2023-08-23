g=input('Enter the function');

x0=input('Enter initial guess');
e=input('Enter tolrence');
n=input('Enter the number of iterations');
m=0;
for k=1:n
    xk=g(x0);
    fprintf('x%d=%.4f\n',k,xk);
    h=abs(x0-xk);
    x0=xk;
    d(k)=xk;
  if h<=e
      break
  else
      j(k)=xk;
      m=m+1;
  end
end

plot(j(1:m),1:m , '--b');
xlabel('Approximation');
ylabel('Iteration');
title('Fixed-Point Iteration');
grid on;
