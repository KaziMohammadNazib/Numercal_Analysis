clear all
clc

n=input('How many variables? : ');

%Input the Matrix value
for i=1:n
    for j=1:n
    a(i,j)=input('Enter coefficient : ')
    end
end

%Input the value of b
for i=1:n
    b(i)=input('Constants : ')
end

%Initial Guess value
x0=zeros(1,n);

%First Iteration
for i = 1:n
    s=0;
    for j=1:n
        if(j~=i)
            s=s+(a(i,j)*x0(i));
        end           
    end
    x(i)=(b(i)-s)/a(i,i);
end

x1=x;
k=1;

%Finding the aproximate value of x
while norm(x1-x0,1)>0.001
for i = 1:n
    s=0;
    for j=1:n
        if(j~=i)
            s=s+(a(i,j)*x1(i));
        end           
    end
    xn(i)=(b(i)-s)/a(i,i);
end
x0=x1;
x1=xn;
k=k+1;
end

k
x=x1'
