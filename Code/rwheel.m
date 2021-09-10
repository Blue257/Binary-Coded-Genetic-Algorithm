function [z]=rwheel(a,n)
    [a1,a2]=size(a);
    for i=1:a1
        [x1,x2]=b2d(a(i,:),n);
        b(i)=optf(x1,x2);
    end
    for i=1:a1
        p(i)=b(i)/sum(b);
    end
    flag=0; j=1; i=1;
    while(flag~=a1)
        if(j>a1)
            j=1;
        elseif((rand(1)<=p(j))&&(j<=a1))
            z(i,:)=a(j,:);
            flag=flag+1;
            j=j+1;
            i=i+1;
        elseif((rand(1)>p(j))&&(j<=a1))
            j=j+1;
        end
    end
end         
            