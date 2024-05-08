%Start
clc
clear all
%Input required things
x1=input('Enter starting value of x:  ')
h= input('Intervel:  ')
x2=input('Ending value of x:  ')
x=x1:h:x2;
n=((x2-x1)/h)+1;
for i=1:n
    y(i)=input('enter value for y:')
end
f=input('input value of x for estimate:\n ')
N=ceil((n+1)/2);

%Construct difference table
for i=1:n
    d(i,1)=y(i);
end
for j=2:n
    for i=1:n-j+1
        d(i,j)=d(i+1,j-1)-d(i,j-1);
    end 
end

%contructing formula
u=(f-x(N))/h;
est_val=d(N,1);
for i=1:n-1
    if(i==1)
        c_i=u;
        est_val=est_val+c_i*(d(N,i+1)+d(N-i,i+1))/2;
    elseif(mod(i,2)==0)
            c_i=c_i*u/i;
            est_val=est_val+c_i*d(N-(i/2),i+1);
    elseif(mod(i,2)==1)
            c_i=c_i*(u^2-(ceil(i/2))^2)/u/i;
            est_val=est_val+c_i*(d(N-floor(i/2),i+1)+d(N-ceil(i/2),i+1))/2;
        end 
end
%print
fprintf('approximate value for %.02f is %0.2f\n:',f,est_val);
%Accuracy 
plot(x,y)
grid on