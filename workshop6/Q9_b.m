function Q9_b
N=50000;
wsum=zeros(1,30);
for i=1:N
    w=Q9_function(2,5);
    wsum=wsum+w;
end
av_w=wsum/N;
figure(4)
plot(av_w);
xlabel('n');ylabel('Average W(n)');
title('a=2,b=5')