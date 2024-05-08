```````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````````clear all
clc
syms x y
f= input('required function \n');
a= input('Initial value of x: ');
h= input('interval: ');
b= input('Ending values of x: ');
z=a:h:b;
n=((b-a)/h)+1
for i=1:n
    v(i)=0;
end
h1=norm(h);
v(1)=input('initial values of y: ');
for i=1:n-1
    c=z(i````````````````````````````````````````````````````````````
    d=v(i);
    f1=subs(f,{x,y},{c,d});
    v(i+1)=v(i)+(h1*f1);
end
v