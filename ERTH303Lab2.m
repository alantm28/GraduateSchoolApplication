%%MATLAB Section of Lab 2
%%Overall view of O`ahu
[x,y,z]=grdread2('dem.grd');
imagesc
figure(1) 
imagesc(flipud(z))
colorbar 
grid 
xlabel('cells in x-direction') 
ylabel('cells in y-direction') 
title('SRTM Topography (m)')
%%Diamond Head Topographic Map
y_position=length(y)-1938; 
x_row=2450:2550; 
diamondhead_topo_profile=z(y_position,x_row);
figure(2) 
plot(x_row,diamondhead_topo_profile) 
grid 
xlabel('cells in x-direction'); 
ylabel('SRTM topography (m)'); 
title ('Topographic profile across Diamond Head Crater')
%%3D Map
figure(3) 
mesh(x,y,z)
title ('3D Topographic profile of O`ahu')