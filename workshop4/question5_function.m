function[Ysum]=question5_function(n)
Ysum=0;
for i=1:n
    u=rand();
    if u<=4/9
        y=1.25;
    end
    if u>4/9 && u<=5/9
        y=2;
    end
    if u>5/9
        y=2.75;
    end
    Ysum= Ysum+y;
end