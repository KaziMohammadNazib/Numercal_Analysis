%Start
clear all
clc

%input function
syms x
f=input('required function \n');

%differentiate function
g=diff(f)

%input uppper and lower values
a=input('upper values for x \n')
b=input('lower values for x \n')

%calculation for 1st term
yf1=subs(f,x,a);
yf2=subs(f,x,b);
yg1=subs(g,x,a);
yg2=subs(g,x,b);
z=yf1*yf2;


%calculation for next nth terms for finding the value
if(z<0)
    u=vpa(a-yf1/yg1);
    fprintf('function has a root between %d and %d \n ', a, b)
    for i=1:10
        w=subs(f,x,u);
        c=subs(g,x,u);
        u=u-(w/c);
    end
    fprintf('the root of the equation is %4.4f \n',u)
else
    fprintf('function has no root between %d and %d \n', a, b)
end
