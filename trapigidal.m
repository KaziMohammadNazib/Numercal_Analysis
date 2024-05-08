%start
clc
clear all
%Input required things
u=input('enter upper limit:')
h= input('Intervel:  ')
l=input('enter lower limit:')
x1=l:h:u
n=((u-l))/h+1;
syms x  
y1=input('input function:\n');
fprintf('\n corresponding y value is:\n')
%substituting the value of x in the function
for i=1:n
 k=x1(i);   
 y(i)=subs(y1,x,k);
end
for i=1:n
    fprintf('%f\n',y(i))
end
%constructing formula
sum1=0;
for i=2:1:n-1
sum1 = sum1 + y(i);
end
h=(u-l)/(n-1);
Integration=h/2*(y(1)+y(n)+(2*sum1));
%Print
fprintf('\nIntegration is %0.4f\n',Integration)
%error estimation
r=int(y1,x,u,l);
error=Integration-r;
fprintf('\n Error is %0.4f\n',error)