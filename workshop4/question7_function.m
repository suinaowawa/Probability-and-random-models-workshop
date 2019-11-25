function[Zsum]=question7_function(n)
Zsum=0;
for i=1:n
    u=rand();
    z=tan(pi*u)+2;
    Zsum= Zsum+z;
end 