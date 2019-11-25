function question7_e
for i=1:5000
    %n=3
    n1=3;
    Z_3(i)=(question7_function(n1)-2*n1)/sqrt(n1);
    %n=10
    n2=10;
    Z_10(i)=(question7_function(n2)-2*n2)/sqrt(n2);
    %n=100
    n3=100;
    Z_100(i)=(question7_function(n3)-2*n3)/sqrt(n3);
end
figure(5);
subplot(3,1,1);
cdfplot(Z_3)
title('n=3');
subplot(3,1,2);
cdfplot(Z_10)
title('n=10');
subplot(3,1,3);
cdfplot(Z_100)
title('n=100');