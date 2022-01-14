%%this script can calculate a car's acceleration using calculus and
%%1 dimensional kinematics
disp ('this script can calculate the acceleration of a car, assuming it is moving in a positive direction.')
pause
t_f=input('Input an amount of seconds ');
if t_f<=0
    error ('how the fuck is that possible')
else
end
v_0=input('input your initial velocity '); 
if v_0<0
    error ('bruh assume the car is always moving in a positive direction')
else
end
x_0=input('Input initial position ');
x_f=input('Input your final position ');
if x_f<x_0
    error ('bruh assume the car is always moving in a positive direction')
else
end
kinematics (t_f,v_0,x_0,x_f)
function kinematics (t_f,v_0,x_0,x_f)
x=linspace(x_0,x_f,20);
t=linspace(0,t_f,20);
%%given x_f-x_0 = (v_0+v_f)t_f/2
v_f=(2.*(x_f-x_0)./(t_f)) - v_0;
a=((v_f-v_0)./t_f);
f=x_0+(v_0.*t)+(0.5.*a.*t.^2);
f_2=v_0+a.*t;
fprintf ('This car accelerates at a rate of %d m/s^2 \n',(a'))
plot(t,f)
hold;
plot(t,f_2)
plot(xlim,a*[1,1])
grid
pause   
end

