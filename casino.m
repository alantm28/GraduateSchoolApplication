disp('Welcome to the casino')
pause
x = input('Guess a number between 1 and 100 ');
Y = randi([1, 100], [5,5]);
z=find(Y==x);
[t,w]=size(z);
if x>100||x<0
    error ('between 1 and 100 dummy')
else
end
if t>0
    disp ('you win go bows')
else
    disp ('lmao you lose')
end