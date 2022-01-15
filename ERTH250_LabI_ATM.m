%%Lab I
disp('THE CASH CALCULATOR: WHEN YOU DONT WANNA CARRY CHANGE!')
pause
[A,initial_cash]=get_denominations;
disp ('You would need ')
Z={'Thousands','Hundreds','Fifties','Twenties','Tens','Fives','Ones','Quarters','Dimes','Nickels','Pennies'};
for B=1:length(A)
    if A(B)>=1
        disp([num2str(A(B)),'x ', Z{B}])
    else
    end
end
fprintf (' in order to have $%g in cash. \n ',(initial_cash))
function [A,initial_cash]=get_denominations 
cash=input('How much does this item cost? $');
initial_cash=cash;
Thousands=0;
M=cash./1000;
if floor(M)>0
    Thousands=Thousands+floor(M);
    cash=cash-1000*floor(M);
end
Hundreds=0;
C=cash./100;
if floor(C)>0
    Hundreds=Hundreds+floor(C);
    cash=cash-100*floor(C);
end
Fifties=0;
L=cash./50;
if floor(L)>0
    Fifties=Fifties+floor(L);
    cash=cash-50*floor(L);
end
Twenties=0;
Y=cash./20;
if floor(Y)>0
    Twenties=Twenties+floor(Y);
    cash=cash-20*floor(Y);
end
Tens=0;
X=cash./10;
if floor(X)>0
    Tens=Tens+floor(X);
    cash=cash-10*floor(X);
end
Fives=0;
V=cash./5;
if floor(V)>0
    Fives=Fives+floor(V);
    cash=cash-5*floor(V);
end
Ones=0;
I=cash;
if floor(I)>0
    Ones=Ones+floor(I);
    cash=cash-1*floor(I);
end
%%BRING ON THE PAIN 
Quarters=0;
Q=cash./0.25;
if floor(Q)>0
    Quarters=Quarters+floor(Q);
    cash=cash-0.25*floor(Q);
end
Dimes=0;
D=cash./0.1;
if floor(D)>0
    Dimes=Dimes+floor(D);
    cash=cash-0.1*floor(D);
end
Nickels=0;
N=cash./0.05;
if floor(N)>0
    Nickels=Nickels+floor(N);
    cash=cash-0.05*floor(N);
end
Pennies=0;
if cash>0
    Pennies=Pennies+cash./0.01;
end
cash=0;
A=[Thousands,Hundreds,Fifties,Twenties,Tens,Fives,Ones,Quarters,Dimes,Nickels,Pennies];
end