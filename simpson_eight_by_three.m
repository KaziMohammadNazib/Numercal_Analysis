%start
clc
clear all
%Input requird things
u=double(input('enter upper limit:'))
h=double(input('Intervel:  '))
l=double(input('enter lower limit:'))
x1=l:h:u
n=((u-l))/h+1;
syms x  
y1=input('input function:\n');
fprintf('\ncorresponding y value is:\n')
%Substituting values
for i=1:n
 k=x1(i);   
 y(i)=subs(y1,x,k);
end
for i=1:n
    fprintf('%f\n',y(i))
end
%Constructing Formula
h=(u-l)/(n-1);
sum2=0;
sum3=0;
for i=1:1:n-1
    y1(i)=y(i+1);
end
for i=1:1:n-2
    if (mod(i,3)==0)
      sum3=sum3+2*y1(i);
    else
       sum2=sum2+3*y1(i);
    end        
end
sum1=y(1)+y(n);
Integration=((3*h)/8)*((sum1)+(sum2)+(sum3));
%print
fprintf('\nIntegration is %0.4f\n',Integration)
%error estimation
r=int(y1,x,u,l);
error=Integration-r;
fprintf('\n Error is %0.4f\n',error)
