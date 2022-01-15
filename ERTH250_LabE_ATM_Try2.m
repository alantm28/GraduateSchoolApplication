%%2nd order polynomial solver
%%problem 1
disp ('problem 1')
pause
disp  ('given a polynomial ax^2 + bx + c, this script will find the roots')
pause
a=input('put your "a" value here ');
b=input('put your "b" value here ');
c=input('put your "c" value here ');
%%asks for stuff for quad equation
[q1,q2]=quad_solver(a,b,c);
roots=[q1,q2];
pause
%%problem 2
disp ('problem 2')
pause
disp ('graphing time')
pause
a=input('put your "a" value here ');
b=input('put your "b" value here ');
c=input('put your "c" value here ');
quad_grapher(a,b,c)
pause
%%problem 3
disp('problem 3')
pause
disp ('this is where we plot a bunch of functions')
pause
quad_grapher(3,2,4)
pause
quad_grapher(0,0,4)
pause
quad_grapher(-2,-1,1)
pause
quad_grapher (1,1,1)
pause
quad_grapher (1,-1,6)
pause
quad_grapher (1,8,16)
pause
quad_grapher (0,-1,1)
pause
quad_grapher (-1,0,4)
pause
disp ('go bows')

function quad_grapher(a,b,c)
[q1,q2]=quad_solver(a,b,c);
roots=[q1,q2];
x=linspace(-10,10);
y=(a.*x.^2 + b.*x + c);
plot(x,y)
hold on
plot (x,y-y,'r')
scatter(roots,[0,0],'g')
xlim([-10,10]);
v=(-b)./(2.*a);
%%formula for a vertex of a 2nd order polynomial
d=max(y);
f=min(y);
if a>0
    scatter(v,f)
elseif a<0
    scatter(v,d)
else
end 
grid
if a==b&&b==0
    disp ('this function is a constant, d/dx f(x) = 0')
elseif a==0
    fprintf ('this function is a linear function, d/dx f(x) = %f \n',b')
else
    fprintf ('this function is a quadratic function, d/dx f(x) = %fx + %d \n',[2.*a',b])
end
hold off
end
function [q1,q2]=quad_solver(a,b,c)
q1 = (-b+sqrt(b.^2 - 4.*a.*c))./(2.*a);
q2 = (-b-sqrt(b.^2 - 4.*a.*c))./(2.*a);
if (b^2)<(4*a*c)
    disp('roots are complex, cannot be plotted without complex analysis')
    q1=NaN;
    q2=NaN;
elseif q1==q2
    disp ('there is one root')
    fprintf ('your root is %d \n',(q1'))
elseif a==0
    disp ('this is a linear function, so there are no roots')
else
    fprintf ('your roots are %d and %f \n',[q1',q2'])
end
end
