function question7
%7c
n=100000;
for i=1:5
    sample_z = question7_function(n)/n;
    disp(['average distance per step = ',num2str(sample_z)])
end
