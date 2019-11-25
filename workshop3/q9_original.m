function q9_original
m = 10000;
lamda = 1;
count = 0;
X1 = zeros(1,m);
X2 = zeros(1,m);
N1 = zeros(1,m);
N2 = zeros(1,m);
Y11 = [];
Y12 = [];
Y21 = [];
Y22 = [];
Y31 = [];
Y32 = [];
Y41 = [];
Y42 = [];
W11 = [];
W12 = [];
W21 = [];
W22 = [];
W31 = [];
W32 = [];
W41 = [];
W42 = [];
for i = 1:m
    [~,N1(i),N2(i)] = cartesian(lamda);
    r = rand;%generate 4 types of x with different probability as required
    if(r < 0.75)
        X1(i) = 1;
        X2(i) = 1;
    end
    if(r > 0.75 && r < 0.833)
        X1(i) = 1;
        X2(i) = -1;
    end
    if(r > 0.833 && r < 0.916)
        X1(i) = -1;
        X2(i) = -1;
    end
    if(r > 0.916)
        X1(i) = -1;
        X2(i) = 1;
    end
    if X1(i)>0 && X2(i)>0 %for x in I quadrant
        y11 = N1(i)+X1(i); %compute y by adding noise
        y12 = N2(i)+X2(i);
        Y11 = [Y11 y11];
        Y12 = [Y12 y12];
        if y11<0||y12<0 %for wrongly decoded case as the decision rule%change as new decision rule as computed in q9_calculate
            W11 = [W11 y11];
            W12 = [W12 y12];
        else    
            count = count+1; %count the correctly decoded points
        end
    end
    if X1(i)<0 && X2(i)>0 %for x in II quadrant
        y21 = N1(i)+X1(i); %compute y by adding noise
        y22 = N2(i)+X2(i);
        Y21 = [Y21 y21];
        Y22 = [Y22 y22];
        if y21>0||y22<0 %for wrongly decoded case as the decision rule
            W21 = [W21 y21];
            W22 = [W22 y22];
        else    
            count = count+1; %count the correctly decoded points
        end
    end
    if X1(i)<0 && X2(i)<0 %for x in III quadrant
        y31 = N1(i)+X1(i); %compute y by adding noise
        y32 = N2(i)+X2(i);
        Y31 = [Y31 y31];
        Y32 = [Y32 y32];
        if y31>0||y32>0 %for wrongly decoded case as the decision rule
            W31 = [W31 y31];
            W32 = [W32 y32];
        else    
            count = count+1; %count the correctly decoded points
        end
    end
    if X1(i)>0 && X2(i)<0 %for x in IV quadrant
        y41 = N1(i)+X1(i); %compute y by adding noise
        y42 = N2(i)+X2(i);
        Y41 = [Y41 y41];
        Y42 = [Y42 y42];
        if y41<0||y42>0 %for wrongly decoded case as the decision rule
            W41 = [W41 y41];
            W42 = [W42 y42];
        else    
            count = count+1; %count the correctly decoded points
        end
    end
end 
figure(9);
hold on
%plot y for 4 quadrant in different color(I-red,II-blue,III-green,IV-cyan)
scatter(Y11, Y12,'.','r');
scatter(Y21, Y22,'.','b');
scatter(Y31, Y32,'.','g');
scatter(Y41, Y42,'.','c');
xlabel('Y1');
ylabel('Y2');
title('Q9 original rule')
%plot wrongly decoded points in different colors as before
figure(10);
title('Q9 wrongly decoded(original rule)')
hold on
scatter(W11, W12,'.','r');
scatter(W21, W22,'.','b');
scatter(W31, W32,'.','g');
scatter(W41, W42,'.','c');
xlabel('Y1');
ylabel('Y2');
%compute wrongly decoded probability(1-correct)
p=1-(count/m);
disp(p)