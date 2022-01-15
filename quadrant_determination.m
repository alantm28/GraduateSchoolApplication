x=input('type your x value ');
y=input('type your y value ');
if x>0
    if y>0
        disp 'quadrant 1'
    elseif y<0
        disp 'quadrant 4'
    else
        disp 'x axis'
    end
elseif x<0
    if y>0
        disp 'quadrant 2'
    elseif y<0
        disp 'quadrant 3'
    else
        disp 'x axis'
    end
else
    disp ('y axis')
end
            