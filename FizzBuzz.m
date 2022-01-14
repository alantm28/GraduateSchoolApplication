%%This is FizzBuzz, so I don't get fucked in the future
disp ('Yes Mr./Ms. employer, I can code FizzBuzz')
pause
y=[1:100];
n=length(y);
for k=1:n
    if mod(k,15)==0
        disp ('FizzBuzz ')
    elseif mod(k,5)==0
        disp ('Buzz ')
    elseif mod (k,3)==0
      disp ('Fizz ')
    else
        fprintf ('%d \n',(k'))
    end
end  