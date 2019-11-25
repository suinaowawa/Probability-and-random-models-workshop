function Q9_a
N=50000;
wsum=zeros(1,30);
for i=1:N
    w=Q9_function(0.3,1);
    wsum=wsum+w;
end
av_w=wsum/N;
figure(3);
plot(av_w);
xlabel('n');ylabel('Average W(n)');
title('a=0.3,b=1')