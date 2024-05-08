%Start
clear all
clc
%input required values
a=input('Initial value for x:')
h=input('Difference for x:')
b=input('Last value of x:')
x=a:h:b;
n=((b-a)/h)+1;
%input values for x and y
for i=1:n
    y(i)=input('Enter values:')
end
x=input('Required value:')
%take the values in array variable
for i=1:n
    d(i,1)=y(i);
end
%Create backward difference table
for j=2:n
    for i=1:n-j+1
        d(i,j)=d(i+1,j-1)-d(i,j-1);
    end
end
%Construct the formula of u
u=(x-b)/h;
for i=1:n-1
    c(i)=u+(i-1);
end
q=1
for i=1:n-1
    q=q*c(i);
    v(i)=q;
end
%Construct the Newton’s Interpolation Formula (Backward)
sum=0;
for i=1:n-1
    
    sum=sum+((v(i)*d(n-i,i+1))/factorial(i));
end
esum=y(n)+sum
%END
