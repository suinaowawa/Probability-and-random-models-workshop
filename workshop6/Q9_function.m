function[w]=Q9_function(a,b)
t=exprnd(4);
w=zeros(1);
u1=rand;
s1=(b-a)*u1+a;
%w(1)=0;
if s1-t>0
    w(1)=s1-t;
else 
    w(1)=0;
end
for i=2:30
    u=rand;
    s=(b-a)*u+a;
    w1=w(i-1)+s-t;
    if w1>0
        w(i)=w1;
    else
        w(i)=0;
    end
end