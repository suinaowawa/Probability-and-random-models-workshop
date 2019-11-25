function q9_calculate
k = linspace(-2,0,1000);%find new decision rule of k
p = (3/4)* (normcdf(1-k,0,sqrt(0.5))).^2 + (1/12)*normcdf(1+k,0,sqrt(0.5)).^2 + 2 *(1/12)* normcdf(1-k,0,sqrt(0.5)) .* normcdf(1+k,0,sqrt(0.5));
[pmax index] = max(p);
fprintf('k=%f,p(correct max)=%f,p(error min)=%f\n',k(index),pmax,1 - pmax);