%Start
clear all
clc

%Input Required values
n=input('Number of Terms :')
for i=1:n
    x(i)=input('Enter Values for x:')
end
for i=1:n
     y(i)=input('Enter Values for y:')
end
f=input( 'Required Value:');

%establish the formula
sum=0;
for i=1:n
    sum1=1;
    sum2=1;
    for j=1:n
        if j~=i
            sum1=sum1*(f-x(j));
            sum2=sum2*(x(i)-x(j));
        p=sum1/sum2;
        end
    end
    sum=sum+(p*y(i));
end

%print the result
esum=sum