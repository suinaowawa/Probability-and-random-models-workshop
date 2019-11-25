Nb=2000000;
Nm1=0;
Nm2=0;
Nfa1=0;
Nfa2=0;
f=0;
for i=1:Nb
    [fault,N]=Q7function;
    if (fault==1)  
        f=f+1;   %the number of readers which are faulty
        if(N>=24)
          Nm1=Nm1+1;   %the number of miss in Q5
        end
        if(N>=39)      %the number of miss in Q6
          Nm2=Nm2+1;
        end
    else
       if(N<24)    
          Nfa1=Nfa1+1;  %the number of false alarm in Q5
       end
       if(N<39)
           Nfa2=Nfa2+1;   %the number of false alarm in Q6
       end
    end
end
Ec1=(Nm1*50+Nfa1*10)/2000000;   %the expected cost
Pmiss1=Nm1/f;                       %miss rate
Pfa1=Nfa1/(2000000-f);            %false alarm rate
Ec2=(Nm2*50+Nfa2*10)/2000000;
Pmiss2=Nm2/f;
Pfa2=Nfa2/(2000000-f);
disp('according to the decision rule in Q5,');  
fprintf('the expected cost = %f, the miss rate = %f, the false alarm rate = %f\n',Ec1,Pmiss1,Pfa1);
disp('according to the decision rule in Q6');
fprintf('the expected cost = %f, the miss rate = %f, the false alarm rate = %f\n',Ec2,Pmiss2,Pfa2);
