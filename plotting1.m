%plotting the functions
x = linspace(-10,10,10000);
y1 = sin(x)-x.*cos(x);
z=0;
plot(x, y1,'-r')
hold on
x = linspace(-2,2,10000);
y2=x.^2+2-exp(-2*x)-x;
plot(x, y2,'-b')
hold on
x = linspace(0,40,100);
y3=log(x)-x+20;
plot(x, y3,'--m')
hold on
x = linspace(-1,2,10000);
y4=x.^5-x.^4+2.*x-1;
plot(x, y4,'-g')
hold on
