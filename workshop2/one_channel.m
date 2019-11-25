% c)
function [input,output] = one_channel(p1,p2)

%This function generate a input bit '0' or '1' ask for the probability of erased---p1 and the probability
%of swap---p2, and return the input and output bit.

%generate an input bit '0' or '1', the probability of produce '0' is q
q=0.5;
if(rand < q)
    input = 0;
else
    input = 1;
end

%the input bit can be erased with probability p1
if(rand < p1)
    output = -1; %use -1 to denote erase
else if(rand < p2)
        %The input bit can be swapped if not erased
    output = 1 - input;
    else
    %Or the input bit can remain the same
    output = input;
    end
end

    
