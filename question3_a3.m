f=@(x)(exp(-x)-x.^2);
x1=(-1:1);
plot(x1,f(x1),'-.r')
bisection2(f,-1,1,200)