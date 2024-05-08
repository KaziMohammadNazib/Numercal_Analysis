%Start
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
    b(i)=input('Enter constant:')
end
%Finding determinant
dett = det(C)
%Check Elemination
if dett == 0
    print('This system unsolvable because det(C) = 0 ')
else
    b = b' %Transpose b matrix to column matrix
    % Gauss Elimination
    for j = 1:(n-1)
        for i= (j+1) : n
            mult = C(i,j)/C(j,j) ;
            for k= j:n
                C(i,k) = C(i,k) - mult*C(j,k) ;
                C % show C
            end
            b(i)=b(i)-(mult *b(j));
            b %Show b
        end
    end
    %find the value of variables
    x(n,:)=b(n,:)/C(n,n);
    for i=n-1:-1:1
     x(i,:)=(b(i,:)-C(i,i+1:n)*x(i+1:n,:))/C(i,i)
    end
end