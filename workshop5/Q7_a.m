%workshop5Q7a
[fault,N]=Q7function;
%when the reader was faulty
if (fault==1)
    disp('the reader was faulty');
    if (N>=24)           %according to the decision rule in Q5
      disp('according to the decision rule in Q5,the reader was not faulty(miss)');
    else
      disp('according to the decision rule in Q5,the reader was faulty(correct)');
    end
    if (N>=38)   %according to the decision rule in Q6
        disp('according to the decision rule in Q6,the reader was not faulty(miss)');
    else
        disp('according to the decision rule in Q6,the reader was faulty(correct)');
    end
else
    %when the reader was not faulty
    disp('the reader was not faulty');  
    if (N>=24)
      disp('according to the decision rule in Q5,the reader was not faulty(correct)');
    else
      disp('according to the decision rule in Q5,the reader was faulty(false alarm)');
    end
    if (N>=38)
        disp('according to the decision rule in Q6,the reader was not faulty(correct)');
    else
        disp('according to the decision rule in Q6,the reader was faulty(false alarm)');
    end
end
