function q7
p1 = normcdf(1,0,sqrt(0.5));
p2 = 1-normcdf(-1,0,sqrt(0.5));
p3 = p1*p2;
disp(p1);
disp(p2);
disp(p3);