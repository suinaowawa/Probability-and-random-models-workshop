function Q6
Y_20=zeros(1,50000);
Y_30=zeros(1,50000);
Y_40=zeros(1,50000);    
y_40 = zeros(1,31);     
count=0;
Y_20sum=0;
Y_30sum=0;
Y_40sum=0;
Y_20_30sum=0;
Y_30_40sum=0;
for i=1:50000
    [Y_20(i),Y_30(i),Y_40(i)]=Q5_function;
    if Y_40(i)<30
        y_40(Y_40(i)+1)=y_40(Y_40(i)+1)+1;
    end %the accumulation of the same n_2 value
    if Y_20(i)<=3&&Y_40(i)<=5
        count=count+1;
    end
    Y_20sum=Y_20sum+Y_20(i);
    Y_30sum=Y_30sum+Y_30(i);
    Y_40sum=Y_40sum+Y_40(i);
    Y_20_30sum=Y_20_30sum+Y_20(i)*Y_30(i);
    Y_30_40sum=Y_30_40sum+Y_30(i)*Y_40(i);
end
y_40=y_40/50000;
figure(2)
t2=0:1:30;
stem(t2,y_40,'g');
hold on
x=1:30;
y=poisspdf(x,10);   
stem(y);
title('the empirical and true PMF of Y(40)');
xlabel('y40');
ylabel('P_Y(40)');
legend('empirical PMF','true PMF');
q=count/50000;
fprintf('b) q = %f\n',q);
mean_20=Y_20sum/50000;
mean_30=Y_30sum/50000;
mean_40=Y_40sum/50000;
fprintf('c) E[Y(20)] = %f, E[Y(30)] = %f, E[Y(40)] = %f\n',mean_20,mean_30,mean_40);
mean_20_30=Y_20_30sum/50000;
mean_30_40=Y_30_40sum/50000;
fprintf('d) E[Y(20)Y(30)] = %f, E[Y(30)Y(40)] = %f\n',mean_20_30,mean_30_40);




