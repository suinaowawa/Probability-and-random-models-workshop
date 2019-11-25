function q5
m = 30000;
lamda = 1;
R = zeros(1,m);
N1 = zeros(1,m);
N2 = zeros(1,m);
count1 = 0;
count2 = 0;
count3 = 0;
for i = 1:m
    [R(i),N1(i),N2(i)] = cartesian(lamda); %use function 'cartesian' to compute R,N1,N2
    if N1(i)<1
        count1 = count1 + 1; %count the point that x1 is decoded correctly
    end
    if N2(i)>-1
        count2 = count2 + 1; %count the point that x2 is decoded correctly
    end
    if N1(i)<1 && N2(i)>-1
        count3 = count3 + 1; %count the point that both x1 and x2 are decoded correctly
    end
end 
figure(2);
scatter(N1(1:1000), N2(1:1000),'.'); %scatter plot for first 1000 samples
xlabel('N1');
ylabel('N2');
p1 = count1/m; %probability for x1 decoded correctly
p2 = count2/m; %probability for x2 decoded correctly
p3 = count3/m; %probability for both x1 and x2 decoded correctly
disp(p1);
disp(p2);
disp(p3);

