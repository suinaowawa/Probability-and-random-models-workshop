function plot_f
n = 99;
m = [2 5 10 100 1000 10000];
p1 = 0; 
Sn = zeros(1,n+1);
S = 0;
Avg = zeros(1,16);
x1 = 0.05:0.05:0.8;
figure(4);
hold on; 
% repeat calling n_channel for each p and M value
% and compute the average bit swaps
for j = 1:6
    p2 = 0.05;
    for k = 1:16               
        Sum = 0;
        for i = 1:m(j)
            S = n_channel(p1, p2, n);
            Sum = Sum + S;    
        end        
        Avg(k) = Sum / m(j);
        p2 = p2 + 0.05;          
    end
    subplot(2,3,j);
    plot(x1, Avg);
    xlabel('p_{2}')
    ylabel('Average S_{n}')
    title(['M=',num2str(m(j))])
end