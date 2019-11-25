%change IIb's code n to 50000
clc;
clear all;
n=50000;
swin = 0;
nwin = 0;
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
        
        nwin = nwin + 1;
    else
        
    end
    if(monty == car)
        
        swin = swin + 1;
    else
        
    end
end
x = sprintf('Total number of procedure 1 NOT Switch Win = %d ',nwin);
disp(x)
x = sprintf('Total number of procedure 2 Switch Win = %d ',swin);
disp(x)
p = swin/n;
x = sprintf('Probability of Switch Win = %.3f ',p);
disp(x)