function [swaps] = n_channel(p1,p2,n)
% this function calls c)'s function one_channel for n times
% and record the number of bit swaps            
    swaps = 0;
    for i = 1:n
        [input,output] = one_channel(p1, p2);
        if(input ~= output)
            swaps = swaps + 1;
        end
    end
end
