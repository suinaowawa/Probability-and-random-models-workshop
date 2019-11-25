function question5
%3a
n=100000;
for i=1:5
    sample_y = question5_function(n)/n;
    disp(['average distance per step = ',num2str(sample_y)])
end
%4
for i=1:5000
    %n=3
    n1=3;
    Y_3(i)=(question5_function(n1)-2*n1)/sqrt(n1);
    %n=10
    n2=10;
    Y_10(i)=(question5_function(n2)-2*n2)/sqrt(n2);
    %n=100
    n3=100;
    Y_100(i)=(question5_function(n3)-2*n3)/sqrt(n3);
end
figure(2);
subplot(3,1,1);
cdfplot(Y_3)
title('n=3');
subplot(3,1,2);
cdfplot(Y_10)
title('n=10');
subplot(3,1,3);
cdfplot(Y_100)
title('n=100');