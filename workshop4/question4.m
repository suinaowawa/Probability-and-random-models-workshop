function question4
for i=1:5000
    %n=3
    n1=3;
    X_3(i)=(question3_function(n1)-2*n1)/sqrt(n1);
    %n=10
    n2=10;
    X_10(i)=(question3_function(n2)-2*n2)/sqrt(n2);
    %n=100
    n3=100;
    X_100(i)=(question3_function(n3)-2*n3)/sqrt(n3);
end
figure(1);
subplot(3,1,1);
cdfplot(X_3)
title('n=3');
subplot(3,1,2);
cdfplot(X_10)
title('n=10');
subplot(3,1,3);
cdfplot(X_100)
title('n=100');