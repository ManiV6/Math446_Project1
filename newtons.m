function [root, iter, errors] = newtons(f, df, x0, TOL, k)

    iter = 0;
    x = x0;
    errors = [];

    while iter < k
        fx = f(x);
        fpx = df(x);

        if abs(fpx) < 1e-12
            error('Derivative too small, stopping.');
        end

        x_new = x - fx / fpx;
        error_val = abs(x_new - x);
        errors = [errors, error_val];

        if error_val < TOL
            break;
        end

        x = x_new;
        iter = iter + 1;
    end

    root = x;
end
