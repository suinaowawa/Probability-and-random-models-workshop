%workshop5Q7a,function of single test
function [y,n] = Q7function( ~ )
   a=rand;
   n=0;    %the number of swiping a card
   if (a<0.22)    %the reader is faulty
      y=1;
      while(1)
         swipe=rand;
         n=n+1;
         if (swipe<0.1)   %swiping a card fails to open
             break;
         end
      end
   else
       y=0;           %the reader has no fault
       while(1)
           swipe=rand;
           n=n+1;
           if (swipe<0.02)    %swiping a card fails to open
               break;
           end
       end
   end
end
