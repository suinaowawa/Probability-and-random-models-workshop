function plot_i
n1 = 99;
n2 = 5;
m = 10000;
k = 10;
p1 = 0;
p2 = 0; 
x = 0:0.05:0.45;
swaps = 0;
Avg = zeros(1,10);
Avg2 = zeros(1,10);
j = 1;
 
% go through every p2 values, recording the average
% number of errors for each p2
for p2 = 0:0.05:0.45
    
    error = 0;
    error2 = 0;
    for z = 1:k            
        for i = 1:m
            swaps = n_channel(p1, p2, n1);
            %if the swap bits are more than half of the outputs, according to
            %the decision rule, the decoder will have an error
            if swaps > n1/2 
                error = error + 1;
            end
            %record errors for n=5
            swaps5 = n_channel(p1,p2,5);
            if swaps5 > n2/2
                error2 = error2 + 1;
            end
        end           
    end
    Avg(j) = error / k;
    Avg2(j) = error2 / k;
    j = j+1;
end
figure(6); 
stem(x, Avg);
hold on
stem(x, Avg2);
legend('n=99','n=5')
title('Average decoder errors vs. Swap probability')
xlabel('p_2')
ylabel('Average Errors')
