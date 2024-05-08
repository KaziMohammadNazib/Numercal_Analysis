%start
clc
clear all
%Input required values
a=input('Enter lower limit a: '); 
b=input('Enter upper limit b: ');  
syms x
f=input('required function \n')
n=input('Enter the  number of sub-intervals n: '); 
%Checking n
if rem(n,6)==0
   m=n/6;
else
    fprintf('\n Enter valid n!!!'); 
    n=input('\n Enter n as multiple of 6 ');
    m=n/6;
end

%value of function
h=(b-a)/n;
for i=1:n+1
    g(i)=subs(f,x,a+((i-1)*h));  
end
%Establishing formula

sum1=g(1)+g(3)+g(5)+g(7);
sum2=5*(g(2)+g(6));
sum=(3*h/10)*((6*g(4))+sum1+sum2);

fprintf('\n The value of integration is %f',sum)
