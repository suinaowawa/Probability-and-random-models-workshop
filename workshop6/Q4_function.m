function [t] = Q4_function           
     t=zeros(1);        
     t_sum=0;       
     Yt=1;
     while (t_sum<=60)
         t_sum=t_sum+exprnd(4);
         if t_sum<=60
            t(Yt)=t_sum;
            Yt=Yt+1;    
         end       
     end 
end
