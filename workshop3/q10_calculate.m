function q10_calculate
k = linspace(-3,0,1000);%find new decision rule of k
p = (1)* (normcdf(1-k,0,sqrt(0.5))).^2 + (0)*normcdf(1+k,0,sqrt(0.5)).^2 + 2 *(0)* normcdf(1-k,0,sqrt(0.5)) .* normcdf(1+k,0,sqrt(0.5));
[pmax index] = max(p);
fprintf('k=%f,p(correct max)=%f,p(error min)=%f\n',k(index),pmax,1 - pmax);