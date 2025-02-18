%Test case 1
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

% Test case 2
% the function
f = @(x) x^2 - x - 1;

% lower bound and the upper bound
a = 0;
b = 5;

% iteratoin and the tolerance
k = 100;
TOL = eps;

% Calling the fucntion from the other file with all the arguments
[r, fr] = bisect(f, a, b, k, TOL);

% Display the results
disp(['Root: ', num2str(r)]);
disp(['Function value at root: ', num2str(fr)]);

%Test case 3
% the function
f = @(x) x - 1;

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

% Test case 4
% the function
f = @(x) x^3 - 1;

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

% Test case 5
% the function
f = @(x) x^3 - x - 1;

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