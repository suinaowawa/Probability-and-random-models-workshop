function plot_d
p2 = 0.05;
n = 99;
%plot the exact pmf, which is Binomial distribution
figure(1); 
x1 = 0:n;
Sn1 = zeros(1,n+1);
%Shift k to be 0 for Sn1(1) and so forth
for k = 1:n+1
    Sn1(k) = (factorial(n)/(factorial(k-1)*factorial(n-(k-1))))*...
        (p2^(k-1))*((1-p2)^(n-(k-1)));
end
stem(x1, Sn1)
title('Binomial Distribution');
xlabel('n')
ylabel('Exact')
%plot the approximate pmf using Poisson approximation
alpha = p2 * n;
figure(2);
x2 = 0:n;
Sn2 = zeros(1,n+1);
for k = 1:n+1
    Sn2(k) =((alpha^(k-1))/(factorial(k-1)))*exp(-alpha);
end
stem(x2, Sn2)
title('Poisson Distribution');
xlabel('n')
ylabel('Approximate')
