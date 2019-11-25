function plot_e
n = 99;
m = 10000;
p1 = 0;
p2 = 0.05;
%plot the exact pmf
x1 = 0:n;
Sn1 = zeros(1,n+1);
for k = 1:n+1
    Sn1(k) = (factorial(n)/(factorial(k-1)*factorial(n-(k-1))))*...
        (p2^(k-1))*((1-p2)^(n-(k-1)));
end
figure(3);
stem(x1, Sn1)
hold on
%plot the empirical pmf by calling n_channel m times
x2 = 0:n; 
Sn2 = zeros(1,n+1);
S = 0; 
for i = 1:m
    S = n_channel(p1, p2, n);
    Sn2(S+1) = Sn2(S+1) + 1;    %Use the number of swaps itself as index
end 
stem(x2,Sn2/m);
legend('Exact','Empirical')
