function t = EulerMortgage(h)
% Approximates the following loan using the given step size
%   LOAN: $750,000, 5% interest, $4000 monthly payment
%   INPUT: step size (float)
%   OUTPUT: time (float)

% init constants 
y0 = 750000;
p = 4000;
r = 0.05;

% init vectors
arr_size = 100000;
t_vec = 1:arr_size;
y_vec = 1:arr_size;

% insert initial values
index = 1;
t = 0;
y = y0;
t_vec(index) = t;
y_vec(index) = y;
index = index +1;

% approximate loan
while y > 0
   t = t + h;
   y = y + h*(r*y - 12*p);
   
   t_vec(index) = t;
   y_vec(index) = y;
   index = index+1;
end

disp(t);

% actual value
t_actual = linspace(0,t,1000);
y_actual = (y0 - (12*p)/r)*exp(r*t_actual)+(12*p)/r;

figure
yyaxis left
plot(t_vec, y_vec, '.');
axis([0 t 0 y0]);
xlabel('t (yrs)');
ylabel('Dollars');

yyaxis right
plot(t_actual, y_actual);
axis([0 t 0 y0]);
title('Discrete (B) vs Continuous (O)');
ylabel('Dollars');
end