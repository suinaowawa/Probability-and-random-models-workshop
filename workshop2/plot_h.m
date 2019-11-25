function plot_h
n = 99;
m = 10000;
k = 10;
p1 = 0;
p2 = 0; 
swaps = 0;
x = 0:0.05:0.45;
Avg = zeros(1,10);
j = 1;
 
% go through every p2 values, recording the average
% number of errors for each p2
for p2 = 0:0.05:0.45
    
    error = 0;
    %Below loop gets errors amongst k tries
    for z = 1:k    
        %Below loop conditions for one error
        for i = 1:m
            swaps = n_channel(p1, p2, n);
            %if the swap bits are more than half of the outputs, according to
            %the decision rule, the decoder will have an error
            if swaps > n/2 
                error = error + 1;
            end
        end           
    end
    Avg(j) = error / k;
    j = j+1;
end
figure(5);
stem(0:0.05:0.45, Avg)
title('Average decoder errors vs. Swap probability')
xlabel('p_2')
ylabel('Average Errors')
