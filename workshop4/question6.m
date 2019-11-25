function question6
%X_n
x=-4:0.1:4;
mu=0;
sigma=sqrt(0.5);
y=normcdf(x,mu,sigma);
figure(3);
plot(x,y) 
title('X_n');
%Y_n
x=-4:0.1:4;
mu=0;
sigma=sqrt(0.5);
y=normcdf(x,mu,sigma);
figure(4);
plot(x,y)    
title('Y_n');