function [y,x1,x2,fit]=GenAlgo(sam,pc,pm)
    %sam=population__pc=probcrover__pm=probkutate
    len=6; crp1=3; crp2=8; limit=100;
    %varlength__croverpoint__looplimit
    endlp=0; err=0.0001; flag=1;
    a=scrt(sam,2*len);
    
    while(flag<=limit)
        b=rwheel(a,len);
        c=crover(b,crp1,crp2,pc);
        d=mutation(c,pm);        
        
        for i=1:sam
            [x1,x2]=b2d(a(i,:),len);
            emat1(i)=optf(x1,x2);
            [x3,x4]=b2d(d(i,:),len);
            emat2(i)=optf(x3,x4);
        end
                 
        if(mean(emat2)>=mean(emat1))
            a=d;
            fit(flag,:)=emat2;
            flag=flag+1;
        end
        
    end
    [maxi,ind]=max(emat2);
    z=a(ind,:);
    [x1,x2]=b2d(z,len);
    y=func(x1,x2);
    
    %plotting
    
    maxi=max(fit');mini=min(fit');avg=mean(fit');
    xax=1:limit;
    
    fig1 = figure('Name', 'Average Fitness Value vs. Generations');    
    plot(xax,avg);           
    xlabel('Generations');
    legend('Avg. Value');
    ylabel('Average Fitness Value'); 
    
    fig2 = figure('Name', 'Max and Min Fitness Value vs. Generations');    
    plot(xax,maxi,xax,mini);    
    legend('Max. Value', 'Min. Value');    
    xlabel('Generations');
    ylabel('Fitness Value'); 
    
    fig3 = figure('Name', 'Optimum vs. Generations');    
    plot(xax,maxi);    
    legend('Optimum Value');    
    xlabel('Generations');
    ylabel('Fitness Value');
    
end