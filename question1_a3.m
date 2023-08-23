% Question 1 assignment 3
f=input('Enter your function');
x0=input('Enter the lower limit');
xu=input('Enter the upper limit');
n= input('Enter the number of iterations');
e=10^-4;
inp=input('Which method you want to use enter [1] for bisection and [2]regular falsai ??');
if inp==1
    bisection(f,x0,xu,n)
elseif inp==2
    regular_falsai(f,x0,xu,n)
else
    disp('Enter a valid input')
end
