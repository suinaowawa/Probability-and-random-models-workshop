sys{1} = tf([1,10000,0],[1,1010,10000]);
figure;
bodeplot(sys{1})
figure;
rlocus(sys{1})
stepplot(sys{1})
stepinfo(sys{1})