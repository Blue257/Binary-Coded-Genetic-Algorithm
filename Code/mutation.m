function a=mutation(a,pm)
[a1,a2]=size(a);
for i=1:a1
    for j=1:a2
        if(rand(1)<=pm)
            if(a(i,j)==1)
                a(i,j)=0;
            else
                a(i,j)=1;                
            end
        else
            a(i,j)=a(i,j);
        end
    end
end