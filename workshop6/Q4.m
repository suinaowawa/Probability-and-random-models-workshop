function Q4
Y1=Q4_function;   
Y2=Q4_function; 
figure(1);
stairs(Y1);
hold on;     
stairs(Y2);    
legend('Sample path 1','Sample path 2');
xlabel('Y(t)');ylabel('t');
view(90,-90)