function [t_20,t_30,t_40,t_20_40,t_30_50,t_40_60]=Q5_function
t_20=0;    %the number of visit  by t=20
t_30=0;    %the number of visit by t=30
t_40=0;    %the number of visit by t=40
t_50=0;     %the number of visit by t=50
t_60=0;     %the number of visit by t=60
[t]=Q4_function;
total=length(t);
for i=1:total
    if(t(i)<20)
        t_20=t_20+1;  
    end
    if(t(i)<30)
        t_30=t_30+1;
    end
    if(t(i)<40)
        t_40=t_40+1;
    end
    if(t(i)<50)
        t_50=t_50+1;
    end
    if(t(i)<60)
        t_60=t_60+1;
    end
end
t_20_40=t_40-t_20;  %the number of visits between t=20 and t=40
t_30_50=t_50-t_30;  %the number of visits between t=30 and t=50
t_40_60=t_60-t_40;  %the number of visits between t=40 and t=60

end