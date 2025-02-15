function newtons_method_test()
    % Define tolerance and maximum iterations
    tol = 1e-10;
    max_iter = 100;
    
    % Define functions and their derivatives
    f_A = @(x) (400*x.^6 + (5*x.^2 - 1).^4 + 60*x.^2 + 8) .* exp(-24*exp(5*x.^2));
    df_A = @(x) derivative(f_A, x);
    
    f_B = @(x) (500*x.^6 + (5*x.^2 - 1).^4 + 60*x.^2 + 8) .* exp(-24*exp(5*x.^2));
    df_B = @(x) derivative(f_B, x);
    
    f_C = @(x) (600*x.^6 + (5*x.^2 - 1).^4 + 60*x.^2 + 8) .* exp(-24*exp(5*x.^2));
    df_C = @(x) derivative(f_C, x);
    
    % Initial guess
    x0 = 0.5;
    
    % Solve using Newton's method
    root_A = newtons(f_A, df_A, x0, tol, max_iter);
    root_B = newtons(f_B, df_B, x0, tol, max_iter);
    root_C = newtons(f_C, df_C, x0, tol, max_iter);
    
    fprintf('Root for f_A: %.10f\n', root_A);
    fprintf('Root for f_B: %.10f\n', root_B);
    fprintf('Root for f_C: %.10f\n', root_C);
end
