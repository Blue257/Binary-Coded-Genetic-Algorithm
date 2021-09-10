function cs=crover(a,cpt1,cpt2,pc)
[a1,a2]=size(a);
index=randsample(1:a1,a1);
b=a(index,:);
cs=zeros(a1,a2);
i=1; 
while (i<a1)
    if(rand(1)<=pc)
        [cs1,cs2]=swap(b(i,:),b(i+1,:),cpt1,cpt2);
        cs(i,:)=cs1; cs(i+1,:)=cs2;
        i=i+2;
    else
        cs(i,:)=b(i,:); cs(i+1,:)=b(i+1,:);
        i=i+2;
    end
end
end