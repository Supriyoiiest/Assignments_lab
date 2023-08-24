clc;clear all
x=linspace(1,10,100);

%Plots of question no 1
f1=sin(x)-x.*(cos(x))+1;
plot(x,f1,'--b')
hold on

f2=x.^+2-exp(-2*x)-x;
plot(x,f2,'-.r')
hold on

f3=cos(x)+exp(sin(x))+(x.^3)-(4*x.^2);
plot(x,f3,'-.m')
hold on

f4=x.^5-x.^4+2*x-1;
plot(x,f4,'*y')
hold on