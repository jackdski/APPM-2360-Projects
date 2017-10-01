function [ ] = euler(y, h, p, r)
% Euler's method for APPM 2360 Project 1
% Assume t_0 is 0
t = 0;
yVec = [];
tVec = [];
while(y ~= 0)
    tVec = [tVec t];
    yVec = [yVec y];
    t = t+1;
    y = yNew(r, h, y, p);
end 
    



end

