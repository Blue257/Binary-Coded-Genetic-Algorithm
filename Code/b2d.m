function [x,y]=b2d(a,n)
    x1=bi2de(a(1:n));
    y1=bi2de(a((n+1):end));
    x=(0.5/((2^n)-1))*x1;
    y=(0.5/((2^n)-1))*y1;
end