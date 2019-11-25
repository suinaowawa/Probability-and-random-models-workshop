clc;
clear all;
car = randi(3);           %give a random number to represent the car door
goat = car;               %give the goat door which host will show an intial value
select = randi(3);        %give a random number to represent the player selected door
x = sprintf('door player select is %d',select);
disp(x)
%select from the three number for the host to show the goat door%
%the number shouldn't be car door or the player selected door%
while((goat == select)||(goat == car))
    goat = randi(3);
end
y = sprintf('show goat is %d',goat);
disp(y)
monty = goat;             %give the door left for host a intial value%
%the door left for host shouldn't be the already shown goat door or the player's selected door%
while((monty == goat)||(monty == select))
    monty = randi(3);
end
%procedure 1: not switch%
%if the play's selected door is car%
if(select == car)
    %so he not switch he win%
    disp('procedure 1:not switch player win')
%and else he doesn't choose the car door%
else
    %and he does't switch he lose%
    disp('procedure 1:not switch player lose')
end
%procedure 2: switch%
%if the door left for monty is car%
if(monty == car)
    %so the player switch he win%
   disp('procedure 2:switch player win')
%and else the door left for monty is not a car door%   
else
    %so player switch he lose%
    disp('procedure 2:switch player lose')
end
   