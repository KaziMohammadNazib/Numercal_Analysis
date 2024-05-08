%start
clc
clear all

% % input required things
x1=input('Enter starting value of x:  ')
h= input('Intervel:  ')
x2=input('Ending value of x:  ')
x=x1:h:x2;
n=((x2-x1)/h)+1

for i=1:n
    y(i,1)=input('Enter corresponding values of y:  ');
end
f=input('input value for estimate:')
%create difference table
for j=2 :n
    for i=1:n-j+1
        y(i,j)=y(i+1,j-1)-y(i,j-1)
    end
end

%Finding the value of x0
count=0;
for i=1:n
    if (f>= x(i)&&f<x(i+1));
        p=x(i);
    end
end
d=p
for i=1:n
    count=count+1;
    if (d==x(i))
        break;
    end
end
N=count
% N=ceil((n+1)/2);
%Establishing the formula
u=(f-x(N))/h
k=1;
t=1;
m=1;
for i=1:n-1
   if (i==1)
       q=(u-1/2)
       sum=q*y(N,i+1)
   elseif(mod(i,2)==0)
      j=(u*(u-1)*m)/factorial(i)
      m=m*(u+k)*(u-1-k);
      k=k+1;
      p=j*factorial(i);
      sum=sum+j*(y(N-1,i+1)+y(N,i+1))/2
   elseif (mod(i,2)~=0)
       q=(p*(u-1/2))/factorial(i)
       sum=sum+y(N-1,i)
   end
end
sum1=(y(N)+y(N+1))/2
t_sum=sum1+sum
% plot(x,y)
% grid on

