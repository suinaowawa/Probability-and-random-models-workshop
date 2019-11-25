clc;
clear all;
throw = 0;
n = 10;
win = 0;
i = 1;
for j=1:1:n
    while 1
        d1 = randi(2);
        d2 = randi(2);
        outcome(i) = d1+d2;        
        if ((outcome(i) == 2))
            y = sprintf('experiment %d',j);
            disp(y)
            disp('player has lost');
            break
        end
        if ((outcome(1)~=2))
            throw = outcome(1);
        end
        if((outcome(i) == throw)&&(i~=1) )
            y = sprintf('experiment %d',j);
            disp(y)
            x = sprintf('player has won on %d throw',i);
            disp(x)
            win = win+1;
            break
        end
        i = i+1;
        
    end
    i=1;
end
x = sprintf('Total number of Win = %d ',win);
disp(x)
