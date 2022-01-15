%%Problem 1: Quakes
%%Plotting Earthquake Data
%%Column 1: Longitude
%%Column 2: Latitude
%%Column 3: Energy Released (kJ?)
%%Column 4: Richter Scale Measurement
disp('Problem 1')
pause
format short;
Q=importdata ('quakes.txt');
x=Q(1:5328,1);
%This is for longitude
y=Q(1:5328,2);
%This is for latitude
z=Q(1:5328,3);
%This is for the Depth
t=Q(1:5328,4);
%This is for the Richter Scale Measurement
figure(1)
subplot(3,2,1)
scatter(x,y)
grid
title ('Distribution of earthquakes')
xlabel('Longitude')
ylabel('Latitude')
subplot(3,2,2)
scatter(x,z)
grid
title ('Longitude vs. Depth')
xlabel('Longitude')
ylabel('Depth (km)')
subplot(3,2,3)
scatter(y,z)
grid
title ('Latitude vs. Depth')
xlabel('Latitude')
ylabel('Depth (km)')
subplot(3,2,4)
scatter(x,t)
grid
title ('Longitude vs. Richter Scale Measurement')
xlabel('Longitude')
ylabel('Richter Scale')
subplot(3,2,5)
scatter(y,t)
grid
title ('Latitude vs. Richter Scale Measurement')
xlabel('Latitude')
ylabel('Richter Scale')
subplot(3,2,6)
scatter(z,t)
grid
title ('Depth vs. Richter Scale Measurement')
xlabel('Depth (km)')
ylabel('Richter Scale Measurement')
pause
%%Problem 2
%%Plotting CO2 data
disp('Problem 2')
pause
format short;
C=importdata ('MaunaLoa_CO2.txt');
a=C(1:731,1);
%This is for years
b=C(1:731,2);
%This is for ppm
p1=polyfit(a,b,1);
%This is for identifying the 1st order polynomial that fits this line
b1=p1(1).*a+p1(2);
%This is for plotting the 1st order polynomial
p2=polyfit(a,b,2);
%This is for identifying the 2nd order polynomial that fits this line
b2=p2(1).*a.^2+p2(2).*a+p2(3);
%This is for plotting the 2nd order polynomial
v=p1(1);
%This is to make num2str easier to use
figure(2)
clf;
plot(a,b,'b')
hold;
grid
plot(a,b1,'g')
plot(a,b2,'r')
title (['CO2 emissions grow at a rate of ' num2str(v) ' ppm/year'])
xlabel('Year')
ylabel('CO2 emissions (ppm)')
pause
disp('The trend on annual CO2 emissions seems to fit the 2nd order polynomial better, compared to the 1st order polynomial.') 
pause
disp('go bows')