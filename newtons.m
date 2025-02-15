function newtons_method()
    % Define the three functions and their derivative
    fA = @(x) (400*x^6 + (5*x^2 - 1)^4 + 60*x^2 + 8)*exp(1) - 24*exp(5*x^2);
    fB = @(x) (500*x^6 + (5*x^2 - 1)^4 + 60*x^2 + 8)*exp(1) -24*exp(5*x^2);
    fC = @(x) (600*x^6 + (5*x^2 - 1)^4 + 60*x^2 + 8)*exp(1) -24*exp(5*x^2);
    
    dfA = @(x) derivative_approx(fA, x);
    dfB = @(x) derivative_approx(fB, x);
    dfC = @(x) derivative_approx(fC, x);
    
    % Initial guess
    x0 = 0.5;
    tol = 1e-12;
    k = 9;
    
    % Solve using Newton's Method
    [rootA, errorsA] = newton_solver(fA, dfA, x0, tol, k);
    % [rootB, errorsB] = newton_solver(fB, dfB, x0, tol, k);
    % [rootC, errorsC] = newton_solver(fC, dfC, x0, tol, k);
    
    % Display results
    fprintf('Root of fA: %.12f\n\n', rootA);
    % fprintf('Root of fB: %.12f\n\n', rootB);
    % fprintf('Root of fC: %.12f\n\n', rootC);
    % % 
    % Convergence analysis
    analyze_convergence_of_functions(errorsA, 'A');
    % analyze_convergence_of_functions(errorsB, 'B');
    % analyze_convergence_of_functions(errorsC, 'C');
end

function [root, errors] = newton_solver(f, df, x0, tol, k)
    errors = [];
    x = x0;
    for i = 1:k
        fx = f(x);
        dfx = df(x);
        if abs(dfx) < 1e-12
            fprintf("hello1\n")
            break;
        end
        x_new = x - fx / dfx;
        error = abs(x_new - x);
        errors = [errors, error];

        
        if i > 1
            linear_ratio = errors(i) / errors(i-1);
            quadratic_ratio = errors(i) / (errors(i-1)^2);
        end
     
        x = x_new;
        if i==1
            fprintf('i = %d , root = %.12f\n',i, x );
        else
            fprintf('i = %d , root = %.12f, linear = %.12f , quadratic = %.12f\n',i, x, linear_ratio,quadratic_ratio );
        end
    end
    root = x;
end

function analyze_convergence_of_functions(errors, label)
    n = length(errors);
    if n < 2
        fprintf('Not enough iterations for analysis of %s.\n', label);
        return;
    end
    
    quad_ratios = []; linear_ratios = [];
    for i = 1:n-1
        if errors(i) ~= 0
            quad_ratios = [quad_ratios, errors(i+1) / errors(i)^2];
            linear_ratios = [linear_ratios, errors(i+1) / errors(i)];
        end
    end
    
    fprintf('Analysis for f%s:\n', label);
    fprintf('Quadratic Convergence Ratio (avg): %.6f\n', mean(quad_ratios));
    fprintf('Linear Convergence Ratio (avg): %.6f\n', mean(linear_ratios));
end


function dfx = derivative_approx(f, x)
    h = 1e-6;
    dfx = (f(x + h) - f(x - h)) / (2*h);
end
