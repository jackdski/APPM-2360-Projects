function [ t ] = eulersMethod(h)
% Euler's method for APPM 2360 Project 1
% Assume t_0 is 0
y = 750000;
p = 4000;
r = 0.05;

t = 0;
yVec = 1:1000;
tVec = 1:1000;
index = 1;

while(y > 0)
    t = t+h;
    y = y + h*(r*h - 12*p);
    tVec(index) = t;
    yVec(index) = y;
    index = index + 1;
end

figure 
plot(tVec, yVec)
title('Loan Estimate with H = 0.01')
ylabel('Dollars')
xlabel('t (years)');

end
