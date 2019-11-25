function q4
m=30000;
n = 10;
%plot the exact cdf by directly plot the cdf formula from Q2 
x1 = 0:0.5:n;
figure(1);
plot(x1,1-exp(-x1));
hold on
%plot the sample cdf by using 'getexp' to create exponential random
r2 = zeros(1,m);
for i = 1:m
    r2(i) = getexp(1);    
end 
cdfplot(r2);
legend('Exact','Sample')
