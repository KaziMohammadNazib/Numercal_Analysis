%start
clear all
clc
%Enter required values 
n=input('how many terms:')
for i=1:n
x0(i)=input('enter value for x:\n')
end
for i=1:n
y(i)=input('enter value for y:\n');
end
x=input('enter required value:')
%take the values in array variable
for i=1:n
     d(i,1)=y(i);
end
%create table for unequal interval
for j=2:n
    for i=1:n-j+1
       d(i,j)=(d(i+1,j-1)-d(i,j-1))/(x0(i+j-1)-x0(i));
    end 
end
%contruct formula for Newton's general interpolation
sum=0;
p=1;
for i=1:n
    sum=sum+p*d(1,i);
    p=p*(x-x0(i));
end
fprintf('value for interpolition is %.2f\n',sum)