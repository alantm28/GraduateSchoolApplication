%%This script can convert a magnitude and an angle into a vector with x/y
%%components lol
disp ('This script converts vectors into x and y components, and allows you to plot them on a graph')
pause
t=input ('how many vectors would you like to plot? ');
for c=1:t
m=input('Type your magnitude here. ');
a=input ('Type your angle in degrees here. ');
if a>=360||a<0
    error ('please bro keep it simple')
else
end
vector_conversion (m,a)
end
function vector_conversion (m,a)
r=a.*(pi./180);
x=m.*cos(r);
y=m.*sin(r);
v=[x;y];
plotv(v,'-o');
grid on
fprintf ('your x component is equal to %d and your y component is equal to %f \n',[x',y'])
hold on
end