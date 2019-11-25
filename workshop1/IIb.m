clc;
clear all;
n=10;
swin = 0;
nwin = 0;
%repeat IIa for n times
for j=1:1:n
    car = randi(3);
    goat = car;
    select = randi(3);
    while((goat == select)||(goat == car))
        goat = randi(3);
    end
    monty = goat;
    while((monty == goat)||(monty == select))
        monty = randi(3);
    end
    if(select == car)
        disp('procedure 1:not switch player win')
        nwin = nwin + 1;
    else
        disp('procedure 1:not switch player lose')
    end
    if(monty == car)
        disp('procedure 2:switch player win')
        swin = swin + 1;
    else
        disp('procedure 2:switch player lose')
    end
end
%display the total number of procedure 1 when the player not switch win%
x = sprintf('Total number of procedure 1 NOT Switch Win = %d ',nwin);
disp(x)
%display the total number of procedure 2 when the player switch win%
x = sprintf('Total number of procedure 2 Switch Win = %d ',swin);
disp(x)
p = swin/n;
x = sprintf('Probability of Switch Win = %.3f ',p);
disp(x)