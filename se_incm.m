clear all
clc

%Input required values
n=input('How many variables?:  ')
for i=1:n
    for j=1:n
        C(i,j)=input('Enter corresponding values for a:' )
    end
end
for i=1:n
    b(i,1)=input('Enter constant:')
end
[A] = [C b]
s=0
for i=1:n
    for j=1:n
        if(j~=i)
            s(i)=s+(A(i,j))
        end           
    end
end
for i=1:n
    for j=1:n            
        if norm(A(i,i))>s(i)
            B(i,j)=A(i,j)
        end
    end
end