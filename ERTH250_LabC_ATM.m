%Problem 1: Earthquake Data in Three Dimensions
disp('Problem 1')
pause
format short;
Q=importdata ('quakes.txt');
x=Q(1:5328,1);
%This is for longitude
y=Q(1:5328,2);
%This is for latitude
z=Q(1:5328,3)*-1;
%This is for the Depth below sea level
scatter3(x,y,z)
grid
view(-37,12)
%I picked this angle to best illustrate the depth of the Earthquakes.
title ('Distribution of earthquakes')
xlabel('Longitude')
ylabel('Latitude')
zlabel('Depth below Sea Level (km)')
pause
%%Problem 2
disp('Problem 2')
pause
a=[-5:0.2:5];
%dimensions for our vectors X and Y
X=a;
Y=a;
[X,Y]=meshgrid(X,Y);
Z=peaks(X,Y);
m=min(Z(:));
%absolute minimum
M=max(Z(:));
%absolute maximum
[R,C]=find(Z==M);
%for finding the values of the maximum
O=Z(R,:);
%row R of Z (where the maximum is)
P=Z(:,C);
%column C of Z (where the maximum is)
Q=X(R,:);
%row R of Z (for plotting X vs. Z)
T=Y(:,C);
%for plotting (for plotting Y vs. Z)
figure(1)
subplot(2,2,1);
mesh(X,Y,Z)
subplot(2,2,2);
contour(X,Y,Z,m:1:M)
subplot(2,2,3);
plot(Q,O)
subplot(2,2,4);
plot(T,P)
pause
disp('go bows')