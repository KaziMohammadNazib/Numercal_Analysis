%Start
clc
clear all
%Input required things
syms x 
u=input('enter upper limit:')
h= input('Intervel:  ')
l=input('enter lower limit:')
x1=l:h:u
n=((u-l))/h+1;
y1=input('input function:\n');
fprintf('\ncorresponding y value is:\n')
%substituting the value of x in the function
for i=1:n
 k=x1(i);   
 y(i)=subs(y1,x,k);
end
for i=1:n
    fprintf('%f\n',y(i))
end
%constructing formula
h=(u-l)/(n-1);
s_odd=0;
for i=2:2:n-1
    s_odd=s_odd+y(i);
end
s_even=0;
for i=3:2:n-2
    s_even=s_even+y(i);
end
p=y(n);
first_sum=y(1)+p;
Integration=h/3*((first_sum)+(4*s_odd)+(2*s_even));
%Print
fprintf('\nIntegration is %0.4f\n',Integration)
%error estimation
r=int(y1,x,u,l);
error=Integration-r;
fprintf('\n Error is %0.4f\n',error)
