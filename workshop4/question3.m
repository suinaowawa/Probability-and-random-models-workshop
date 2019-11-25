function question3
n=100000;
for i=1:5
    sample_x = question3_function(n)/n;
    disp(['average distance per step = ',num2str(sample_x)])
end