function[r,n1,n2] = cartesian(lamda)
r2 = getexp(lamda); %generate random variable r^2, theta and 
theta = rand*2*pi;  %compute its cartesian coordinates N1,N2
r = sqrt(r2);
n1 = r*cos(theta);
n2 = r*sin(theta);