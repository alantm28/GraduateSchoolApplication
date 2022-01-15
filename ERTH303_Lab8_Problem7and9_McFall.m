%%Rheology Lab Problems 7 and 9%%
%%日本語でコードする（笑）%%
%%Problem 7%%
disp ('Problem 7')
pause
T=1373; %%temperature%%
E=1*10^-14; %%strain rate in 1/s%%
A=5.6*10^-27; %%1/Pa^n * S%%
Q=360*10^3; %% J/mol%%
n=3.5; %%stress factor%%
R=8.1345; %%J/molK ideal fluid constant??%%
disp('stress is represented by "o" in the equation')
disp('recall E = A(o)^n*exp(-Q/RT)')
S = (E/(A*exp(-Q/(R*T))))^(1/3.5);
o = S * 10^-6;
fprintf ('The stress experienced at this point is approximately %f MPa. \n', (o')) 
pause
%%Problem 9%%
disp ('Problem 9')
pause
disp('recall Vp = sqrt((K + (2u/3))/p)')
p = 1900; %%rock density%%
disp('for a.), assume porosity of 0.6, K_a = 5 GPa, u_a = 0.6 GPa.')
K_a = 5*10^9; %%for all K and u values, I'm converting from GPa to Pa to make%%
%%unit conversion to velocity easier%%
u_a = 0.6*10^9;
Vp_a = sqrt((K_a + (2*u_a/3))/p)*10^-3; %% 10^-3 is for conversion from m to km%%
fprintf ('The velocity of the seismic waves in layer "a" is %f km/s. \n', (Vp_a'))
disp('for b.) assume porosity of 0.4, K_b = 7 GPa, u_b = 1.2 Gpa.')
K_b=7*10^9;
u_b=1.2*10^9;
Vp_b = sqrt((K_b + (2*u_b/3))/p)*10^-3;
fprintf ('The velocity of the seismic waves in layer "b" is %f km/s. \n', (Vp_b'))
dVp = Vp_b - Vp_a;
fprintf ('Speed contrast between layers is %f km/s. \n', (dVp'))