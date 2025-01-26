% the function
f = @(x) x^2 - 4;

% lower bound and the upper bound
a = 0;
b = 5;

% iteratoin and the tolerance
k = 50;
TOL = eps;

% Calling the fucntion from the other file with all the arguments
[r, fr] = bisect(f, a, b, k, TOL);

% Display the results
disp(['Root: ', num2str(r)]);
disp(['Function value at root: ', num2str(fr)]);
