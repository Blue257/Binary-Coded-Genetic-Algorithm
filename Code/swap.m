function [z1,z2]=swap(x1,x2,n1,n2)
temp=x2;
x2=[x2(1:n1),x1(n1+1:n2-1),x2(n2:end)];
x1=[x1(1:n1),temp(n1+1:n2-1),x1(n2:end)];
z1=x1; z2=x2;
end