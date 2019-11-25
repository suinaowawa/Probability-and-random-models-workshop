clc;
clear all;
throw = 0;
n=50000;
win = 0;
i = 1;
for j=1:1:n
    while 1
        d1 = randi(2);
        d2 = randi(2);
        outcome(i) = d1+d2;        
        if ((outcome(i) == 2))
            

            break
        end

        if ((outcome(1)~=2))
            throw = outcome(1);
        end
        if((outcome(i) == throw)&&(i~=1) )
            win = win+1;
            break
        end
        i = i+1;
        
    end
    i=1;
end
x = sprintf('Total number of Win = %d ',win);
disp(x)
