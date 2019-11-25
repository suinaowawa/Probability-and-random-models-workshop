function[Xsum]=question3_function(n)
Xsum=0;
for i=1:n
    u=rand();
    x=3*sqrt(u);
    Xsum= Xsum+x;
end 