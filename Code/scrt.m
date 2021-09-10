function z=scrt(a,b)
    for i=1:a
        for j=1:b
            if (rand(1)<=0.5)
                z(i,j)=0;
            else
                z(i,j)=1;
            end
        end
    end
end   
        